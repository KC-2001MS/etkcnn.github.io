import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                page.body
            }
            .padding(.top, 80)
            .background("#E6E6E6")
        }
    }
}
