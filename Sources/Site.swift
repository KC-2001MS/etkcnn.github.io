import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "ヘ〜ルプ〜"
    var titleSuffix = " – ヘ〜ルプ〜"
    var url = URL(string: "https://etsuko.chinone.org")!
    var builtInIconsEnabled = true

    var author = "Keisuke Chinone"
    
    var robotsConfiguration = Robots()
    
    var homePage = Home()
    var theme = MyTheme()
    
    var pages: [any StaticPage] {
        Home()
    }
    
    var layouts: [any ContentPage] {
          Layout()
    }
}


