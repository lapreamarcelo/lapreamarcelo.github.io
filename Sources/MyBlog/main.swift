import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyBlog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Marcelo Laprea"
    var description = "iOS Software Engineer - Blog - iOS Tutorials and Articles - Videos"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try MyBlog().publish(withTheme: .foundation)
