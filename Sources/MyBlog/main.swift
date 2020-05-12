import Foundation
import Publish
import Plot
import SplashPublishPlugin

try MyBlog().publish(using: [
    .installPlugin(.splash(withClassPrefix: "")),
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .MyTheme, indentation: .tabs(1)),
    .generateSiteMap()]
)
