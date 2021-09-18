import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct StevenyuserGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case projects
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://stevenyuser.com")!
    var name = "Steven Yu"
    var description = "Steven Yu's Personal Website ｜ 俞越的网站"
    var language: Language { .english }
    var imagePath: Path? { Path("images") }
}

// This will generate your website using the built-in Foundation theme:
try StevenyuserGithubIo().publish(
    withTheme: .myTheme,
    deployedUsing: .gitHub("stevenyuser/stevenyuser.github.io", useSSH: false)
)
