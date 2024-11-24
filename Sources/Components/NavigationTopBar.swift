//
//  NavigationTopBar.swift
//  IgniteStarter
//
//  Created by 茅根啓介 on 2024/11/21.
//

import Foundation
import Ignite

struct NavigationTopBar: Component {
    var name: String = "ヘ〜ルプ〜"
    
    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: logo) {
            Link(target: "/tasks") {
                Text("タスク")
                    .margin(.none)
            }
            
            Link(target: "/consumables") {
                Text("消耗品")
                    .margin(.none)
            }
            
            Link(target: "/other") {
                Text("その他")
                    .margin(.none)
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.light)
        .position(.fixedTop)
        .background("#C8C8C8")
    }
    
    private var logo: any InlineElement {
        Text(name)
            .fontWeight(.bold)
            .margin(.none)
            .font(.title4)
    }
}
