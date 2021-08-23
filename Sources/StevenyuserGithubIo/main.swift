import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct StevenyuserGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://stevenyuser.github.io")!
    var name = "stevenyuser"
    var description = "Steven's personal site"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try StevenyuserGithubIo().publish(
    withTheme: .foundation,
    deployedUsing: .gitHub("stevenyuser/stevenyuser.github.io", useSSH: false)
)
