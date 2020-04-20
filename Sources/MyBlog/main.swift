import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This will generate your website using the built-in Foundation theme:
try MyBlog().publish(
    withTheme: .foundation,
    plugins: [.splash(withClassPrefix: "")]
)
