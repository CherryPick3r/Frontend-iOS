//
//  MenuView.swift
//  CherryPicker
//
//  Created by 김도형 on 2023/05/01.
//

import SwiftUI
import Combine

struct MenuView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    @State private var subscriptions = Set<AnyCancellable>()
    @State private var userName = ""
    @State private var isUserNameEditing = false
    @State private var showDisplayStyleDialog = false
    @State private var showWithdrawalView = false
    @State private var isLoading = false
    @State private var error: APIError?
    @State private var showError = false
    
    @FocusState private var isUserNameFocused: Bool
    
    var body: some View {
        ViewThatFits(in: .vertical) {
            VStack {
                menu()
                
                Spacer()
            }
            
            ScrollView {
                menu()
            }
        }
        .modifier(BackgroundModifier())
        .navigationTitle("메뉴")
        .navigationBarTitleDisplayMode(.inline)
        .onTapGesture {
            isUserNameFocused = false
            isUserNameEditing = false
        }
        .tint(Color("main-point-color"))
        .modifier(ErrorViewModifier(showError: $showError, error: $error))
        .fullScreenCover(isPresented: $showWithdrawalView) {
            WithdrawalView()
        }
        .task {
            fetchUserNickname()
        }
    }
    
    @ViewBuilder
    func menu() -> some View {
        HStack {
            Spacer()
            
            VStack {
                userMenu()
                
                settingMenu()
                
                helpMenu()
                
                logoutButton()
                
                withdrawalButton()
            }
            .frame(maxWidth: 500)
            
            Spacer()
        }
    }
    
    @ViewBuilder
    func menuBackground() -> some View {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .fill(Color("background-shape-color"))
            .shadow(color: .black.opacity(0.1), radius: 2)
    }
    
    @ViewBuilder
    func userMenu() -> some View {
        VStack(spacing: 20) {
            HStack(spacing: 0) {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                        .controlSize(.mini)
                } else {
                    TextField("닉네임", text: $userName)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("main-point-color"))
                        .fixedSize(horizontal: true, vertical: false)
                        .disabled(!isUserNameEditing)
                        .focused($isUserNameFocused)
                        .onSubmit {
                            isUserNameFocused = false
                            isUserNameEditing = false
                            
                            changeUserNickname()
                        }
                }
                
                Text("님")
                    .fontWeight(.bold)
                    .foregroundColor(Color("main-point-color"))
                
                Button {
                    isUserNameEditing = true
                    isUserNameFocused = true
                } label: {
                    Label("수정", systemImage: "pencil.line")
                        .labelStyle(.iconOnly)
                }
                .padding(.leading, 5)
                .disabled(showError || isLoading)
                
                Spacer()
            }
            
            NavigationLink {
                UserAnalyzeView()
            } label: {
                HStack {
                    Text("취향분석")
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .font(.title3)
                }
            }
        }
        .padding(20)
        .background {
            menuBackground()
        }
        .padding()
    }
    
    @ViewBuilder
    func settingMenu() -> some View {
        VStack(spacing: 20) {
            HStack {
                Text("화면 스타일")
                    .foregroundColor(Color("main-point-color"))
                
                Spacer()
                
                Button {
                    showDisplayStyleDialog = true
                } label: {
                    Text(userViewModel.userColorScheme.rawValue)
                        .foregroundColor(Color("secondary-text-color-strong"))
                }
                .confirmationDialog("화면 스타일 선택", isPresented: $showDisplayStyleDialog) {
                    Button("시스템 기본값") {
                        userViewModel.userColorScheme = .system
                    }
                    
                    Button("라이트 모드") {
                        userViewModel.userColorScheme = .light
                    }
                    
                    Button("다크 모드") {
                        userViewModel.userColorScheme = .dark
                    }
                }
            }
        }
        .padding(20)
        .background {
            menuBackground()
        }
        .padding()
    }
    
    @ViewBuilder
    func helpMenu() -> some View {
        VStack(spacing: 20) {
            HStack {
                Text("버전")
                    .foregroundColor(Color("main-point-color"))
                
                Spacer()
                
                Text(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "")
                    .foregroundColor(Color("secondary-text-color-strong"))
            }
            
            NavigationLink {
                
            } label: {
                HStack {
                    Text("공지사항")
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .font(.title3)
                }
            }
            
            NavigationLink {
                
            } label: {
                HStack {
                    Text("서비스 이용약관")
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .font(.title3)
                }
            }
            
            NavigationLink {
                
            } label: {
                HStack {
                    Text("개인정보 처리방침")
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .font(.title3)
                }
            }
        }
        .padding(20)
        .background {
            menuBackground()
        }
        .padding()
    }
    
    @ViewBuilder
    func logoutButton() -> some View {
        Button {
            
        } label: {
            HStack {
                Spacer()
                
                Text("로그아웃")
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding()
            .background {
                ZStack {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color("background-shape-color"))
                    
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .strokeBorder(Color("main-point-color-weak"), lineWidth: 2)
                }
                .shadow(color: .black.opacity(0.1), radius: 2)
            }
        }
        .padding()
    }
    
    @ViewBuilder
    func withdrawalButton() -> some View {
        Button {
            showWithdrawalView = true
        } label: {
            HStack {
                Spacer()
                
                Text("회원탈퇴")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color("background-shape-color"))
                
                Spacer()
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color("main-point-color"))
                    .shadow(color: .black.opacity(0.1), radius: 5)
            }
        }
        .padding()
    }
    
    func fetchUserNickname() {
        withAnimation(.easeInOut) {
            isLoading = true
        }
        
        withAnimation(.spring()) {
            APIError.closeError(showError: &showError, error: &error)
        }
        
        APIFunction.fetchUserNickname(token: userViewModel.readToken, userNicknameRequest: UserRequest(userEmail: userViewModel.readUserEmail), subscriptions: &subscriptions) { userNicknameResponse in
            userName = userNicknameResponse.userNickname
            
            withAnimation(.easeInOut) {
                isLoading = false
            }
        } errorHandling: { apiError in
            withAnimation(.spring()) {
                APIError.showError(showError: &showError, error: &error, catchError: apiError)
            }
        }
    }
    
    func changeUserNickname() {
        withAnimation(.easeInOut) {
            isLoading = true
        }
        
        withAnimation(.spring()) {
            APIError.closeError(showError: &showError, error: &error)
        }
        
        APIFunction.changeUserNickname(token: userViewModel.readToken, userNickNameChangeRequest: UserNicknameChangeRequest(userEmail: userViewModel.readUserEmail, changeUserNickname: userName), subscriptions: &subscriptions) { userNicknameChangeResponse in
            userName = userNicknameChangeResponse.changedUserNickname
            
            withAnimation(.easeInOut) {
                isLoading = false
            }
        } errorHandling: { apiError in
            withAnimation(.spring()) {
                APIError.showError(showError: &showError, error: &error, catchError: apiError)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MenuView()
                .environmentObject(UserViewModel())
        }
        .tint(Color("main-point-color"))
        .navigationBarTitleDisplayMode(.inline)
    }
}
