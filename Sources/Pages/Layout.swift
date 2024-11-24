//
//  Layout.swift
//  IgniteStarter
//
//  Created by 茅根啓介 on 2024/11/21.
//

import Foundation
import Ignite

struct Layout: ContentPage {
    func body(content: Content, context: PublishingContext) async -> [any BlockElement] {
        Group {
            NavigationTopBar()
        }
        
        Text(content.title)
            .font(.title1)

        if let image = content.image {
            Image(image, description: content.imageDescription)
                .resizable()
                .cornerRadius(20)
                .frame(maxHeight: 300)
                .horizontalAlignment(.center)
        }

        if content.hasTags {
            Group {
                Text("Tagged with: \(content.tags.joined(separator: ", "))")

                Text("\(content.estimatedWordCount) words; \(content.estimatedReadingMinutes) minutes to read.")
            }
        }

        Text(content.body)
        
        Group {
            IgniteFooter()
        }
    }
}
