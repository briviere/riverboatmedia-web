import Foundation
import Publish
import Plot
import SplashPublishPlugin

struct RiverboatMedia: Website {
    enum SectionID: String, WebsiteSectionID {
        case articles
        case tutorials
        case videos
        case basics
        case tips
        case projects
        case talks
        case courses
    }
    
    struct ItemMetadata: WebsiteItemMetadata {
        var language: String?
        var draft: Bool? = false
        var highlight: Bool? = false
    }
    
    var url = URL(string: "https://riverboatmedia.ca")!
//    var url = URL(string: "https://alvarez-technologies.web.app")!
    var name = "RIVERBOATMEDIA"
    var description = "iOS & Swift tutorials, videos, projects, code and more."
    var language: Language { .english }
    var imagePath: Path? { "images/icon.png" }
    var stylesVersion = 2
    
    var title = "Hello! I am Brian, a software engineer for Riverboat Media."
    var subtitle = "Here I share everything I do. Tutorials, code and more."
}

// This will generate your website using the built-in Foundation theme:
try RiverboatMedia().publish(withTheme: .twentyTwenty, additionalSteps: [], plugins: [.splash(withClassPrefix: ""), .ensureAllItemsAreTagged, .improveImages, .createGitHubButtons])
//try AlvarezTech().publish(using: [
//    .installPlugin(.splash(withClassPrefix: "")),
//    .copyResources(),
//    .addMarkdownFiles(),
//    .sortItems(by: \.date, order: .descending),
//    .generateHTML(withTheme: .twentyTwenty, indentation: nil),
//    .generateRSSFeed(
//        including: [.videos],
//        config: .default
//    ),
//    .generateSiteMap(indentedBy: nil),
//    .installPlugin(.ensureAllItemsAreTagged),
//    .installPlugin(.improveImages)
//])
