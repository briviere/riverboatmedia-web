import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func footer(for site: RiverboatMedia) -> Node {
        .footer(
            .class("site-footer outer"),
            .div(
                .class("site-footer-content inner"),
                .section(
                    .class("copyright"),
                    .text("By "),
                    .strong(
                        .a(
                            .text("Brian Riviere"),
                            .href("/about")
                        )
                    ),
                    .text(" © 2020")
                ),
                .div(
                    .class("site-footer-nav"),
                    .a(
                        .text("RSS feed"),
                        .href("/feed.rss")
                    ),
                    .a(
                        .text("Twitter"),
                        .href("https://twitter.com/briviere"),
                        .target(.blank)
                    ),
                    .a(
                        .text("Facebook"),
                        .href("https://www.facebook.com/brian.riviere1"),
                        .target(.blank)
                    )
                )
            ),
            .script(.src("https://www.gstatic.com/firebasejs/7.8.2/firebase-app.js")),
            .script(.src("https://www.gstatic.com/firebasejs/7.8.2/firebase-analytics.js")),
            .script(.src("/firebase.js"))
        )
    }
}
