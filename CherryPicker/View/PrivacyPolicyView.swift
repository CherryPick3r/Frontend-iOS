//
//  PrivacyPolicyView.swift
//  CherryPicker
//
//  Created by 김도형 on 6/9/23.
//

import SwiftUI

struct PrivacyPolicyView: View {
    @Binding var path: [NavigationPath]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("""
                    < 체리피커 팀 >('https://github.com/CherryPick3r' 이하 '체리피커')은(는) 「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.
                    
                    ○ 이 개인정보처리방침은 2023년 3월 7부터 적용됩니다.
                    """)
                .font(.subheadline)
                .padding(.bottom, 50)
                
                Group {
                    paragraph(title: "제1조(개인정보의 처리 목적)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("""
                                < 체리피커 팀 >('https://github.com/CherryPick3r' 이하 '체리피커')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
                                
                                """)
                                .fontWeight(.semibold)
                            }
                            .padding(.bottom, 5)
                            
                            HStack {
                                Text("""
                                1. 홈페이지 회원가입 및 관리
                                
                                회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지 목적으로 개인정보를 처리합니다.
                                
                                2. 재화 또는 서비스 제공
                                
                                서비스 제공, 콘텐츠 제공을 목적으로 개인정보를 처리합니다.
                                """)
                                
                                Spacer()
                            }
                        }
                    }
                    
                    paragraph(title: "제2조(개인정보의 처리 및 보유 기간)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("""
                                ① < 체리피커 팀 >은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.
                                
                                ② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
                                
                                """)
                                
                                Spacer()
                            }
                            .padding(.bottom, 5)
                            
                            HStack {
                                Text("""
                                1. <홈페이지 회원가입 및 관리>
                                <홈페이지 회원가입 및 관리>와 관련한 개인정보는 수집.이용에 관한 동의일로부터<회원 탈퇴 시>까지 위 이용목적을 위하여 보유.이용됩니다.
                                보유근거 : 회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 또는 이용목적 달성 시 지체없이 파기하고 있습니다.
                                관련법령 :
                                예외사유 :
                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                        }
                    }
                    
                    paragraph(title: "제3조(처리하는 개인정보의 항목)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("① < 체리피커 팀 >은(는) 다음의 개인정보 항목을 처리하고 있습니다.")
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("""
                                
                                1. < 홈페이지 회원가입 및 관리 >
                                필수항목 : 이름, 이메일
                                선택항목 :
                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                        }
                    }
                    
                    paragraph(title: "제4조(개인정보의 파기절차 및 파기방법)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("""
                                ① < 체리피커 팀 > 은(는) 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.
                                
                                ② 정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.
                                """)
                                
                                Spacer()
                            }
                            .padding(.bottom, 5)
                            
                            HStack {
                                Text("""
                                1. 법령 근거 :
                                2. 보존하는 개인정보 항목 : 계좌정보, 거래날짜
                                
                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                            
                            HStack {
                                Text("③ 개인정보 파기의 절차 및 방법은 다음과 같습니다.")
                                
                                Spacer()
                            }
                            .padding(.bottom, 5)
                            
                            HStack {
                                Text("""
                                1. 파기절차
                                < 체리피커 팀 > 은(는) 파기 사유가 발생한 개인정보를 선정하고, < 체리피커 팀 > 의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.
                                
                                2. 파기방법
                                
                                종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
                                
                                전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                        }
                    }
                }
                
                Group {
                    paragraph(title: "제5조(정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항)") {
                        HStack {
                            Text("""
                            ① 정보주체는 체리피커 팀에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
                            
                            ② 제1항에 따른 권리 행사는 체리피커 팀에 대해 「개인정보 보호법」 시행령 제41조제 1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 체리피커 팀은(는) 이에 대해 지체 없이 조치하겠습니다.
                            
                            ③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다.이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식 에 따른 위임장을 제출하셔야 합니다.
                            
                            ④ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
                            
                            ⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
                            
                            ⑥ 체리피커 팀은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지 의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                            """)
                        }
                    }
                    
                    paragraph(title: "제6조(개인정보의 안전성 확보조치에 관한 사항)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("< 체리피커 팀 >은(는) 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.\n")
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("""
                                1. 내부관리 계획의 수립 및 시행
                                개인정보의 안전한 처리를 위하여 내부관리 계획을 수립하고 시행하고 있습니다.
                                
                                2. 개인정보 취급 직원의 최소화 및 교육
                                개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.
                                
                                3. 정기적인 자체 감사 실시
                                개인정보 취급 관련 안정성 확보를 위해 정기적 (분기 1회)으로 자체 감사를 실시하고 있습니다.
                                
                                4. 개인정보에 대한 접근 제한
                                개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.

                                5. 접속기록의 보관 및 위변조 방지
                                개인정보처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 다만, 5만명 이상의 정보주체에 관하여 개인정보를 추가하거나, 고유식별정보 또는 민감정보를 처리하는 경우 에는 2년이상 보관, 관리하고 있습니다.
                                또한, 접속기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.
                                
                                6. 개인정보의 암호화
                                이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.
                                
                                7. 해킹 등에 대비한 기술적 대책
                                <체리피커 팀>('체리피커')은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.
                                
                                8. 비인가자에 대한 출입 통제
                                개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.
                                
                                9. 문서보안을 위한 잠금장치 사용
                                개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.
                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                        }
                    }
                    
                    paragraph(title: "제7조(개인정보를 자동으로 수집하는 장치의 설치·운영 및 그 거부에 관한 사항)") {
                        HStack {
                            Text("체리피커 팀 은(는) 정보주체의 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’ 를 사용하지 않습니다.")
                            
                            Spacer()
                        }
                    }
                    
                    paragraph(title: "제8조 (개인정보 보호책임자에 관한 사항)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("① 체리피커 팀은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.")
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("""
                                
                                ▶ 개인정보 보호책임자
                                성명 : 김도형
                                직책 : 대표
                                직급 : 대표
                                연락처 : 010-9027-8292, shapekim98@gmail.com
                                ※ 개인정보 보호 담당부서로 연결됩니다.
                                
                                ▶ 개인정보 보호 담당부서
                                부서명 : 체리피커 팀
                                담당자 : 김도형
                                연락처 : 010-9027-8292, shapekim98@gmail.com
                                
                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                            
                            HStack {
                                Text("② 정보주체께서는 체리피커 팀의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당 부서로 문의하실 수 있습니다. 체리피커 팀은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.")
                                
                                Spacer()
                            }
                        }
                    }
                    
                    paragraph(title: "제9조(개인정보의 열람청구를 접수·처리하는 부서)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("""
                                정보주체는 「개인정보 보호법」 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다.
                                < 체리피커 팀 >은(는) 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.
                                
                                """)
                                .fontWeight(.semibold)
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("""
                                ▶ 개인정보 열람청구 접수·처리 부서
                                부서명 : 체리피커 팀
                                담당자 : 김도형
                                연락처 : 010-9027-8292, shapekim98@gmail.com
                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                        }
                    }
                    
                }
                
                Group {
                    paragraph(title: "제10조(정보주체의 권익침해에 대한 구제방법)") {
                        VStack(spacing: 0) {
                            HStack {
                                Text("정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.")
                                
                                Spacer()
                            }
                            
                            HStack {
                                Text("""
                                
                                1. 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)

                                2. 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)

                                3. 대검찰청 : (국번없이) 1301 (www.spo.go.kr)

                                4. 경찰청 : (국번없이) 182 (ecrm.cyber.go.kr)

                                """)
                                
                                Spacer()
                            }
                            .padding(.leading)
                            
                            HStack {
                                Text("""
                                「개인정보보호법」 제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.

                                ※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고하시기 바랍니다.
                                """)
                                
                                Spacer()
                            }
                        }
                    }
                    
                    paragraph(title: "제12조(개인정보 처리방침 변경)") {
                        HStack {
                            Text("""
                            ① 이 개인정보처리방침은 2023년 6월 8부터 적용됩니다.

                            ② 이전의 개인정보 처리방침은 아래에서 확인하실 수 있습니다.
                            """)
                            
                            Spacer()
                        }
                    }
                }
            }
            .foregroundColor(Color("main-text-color"))
            .padding()
        }
        .navigationTitle("개인정보 처리방침")
        .navigationBarTitleDisplayMode(.large)
        
    }
    
    @ViewBuilder
    func paragraph(title: String, content: () -> some View) -> some View {
        VStack {
            Section {
                content()
                    .font(.subheadline)
                    .lineSpacing(5)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 50)
            } header: {
                HStack {
                    Text(title)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                .padding(.bottom)
            }
        }
    }
}

struct PrivacyPolicyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyView(path: .constant([.menuView, .termsOfUse]))
    }
}
