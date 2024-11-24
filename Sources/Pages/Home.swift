import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            NavigationTopBar()
        }
        
        Group {
            Text("ヘ〜ルプ〜へようこそ")
                .font(.title1)
            
            Text("""
            このサイトは、家族・介護士・ヘルパー・理学療法士のために制作された情報確認サイトです。Webページを参照することによって、簡単にいつものタスクや作業手順などを確認することができます。
            """)
                .font(.lead)
            
            Text("見出し")
                .font(.title2)
            
            List {
                Link(target: "/tasks") {
                    Text("タスク")
                }
                .linkStyle(.hover)
                
                Link(target: "/consumables"){
                    Text("消耗品")
                }
                .linkStyle(.hover)
                
                Link(target: "/other"){
                    Text("その他")
                }
                .linkStyle(.hover)
            }
            .listStyle(.unordered(.square))
            
            Divider()
            
            Text("このサイトはURLを知っていれば誰でも見ることができるので、機密性の高い情報は取り扱いません。それらの情報は、申し送りのノートの内容または壁面の掲示内容を確認してください。")
                .foregroundStyle(.secondary)
                .font(.body)
        }
        
        Group {
            IgniteFooter()
        }
    }
}
