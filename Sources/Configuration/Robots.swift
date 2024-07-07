//
//  Robots.swift
//
//  
//  Created by Keisuke Chinone on 2024/06/06.
//


import Foundation
import Ignite

struct Robots: RobotsConfiguration {
    var disallowRules: [DisallowRule]

    init() {
        self.disallowRules = [
            DisallowRule(name: "*", paths: ["/"]),
//            DisallowRule(robot: .chatGPT),
        ]
    }
}
