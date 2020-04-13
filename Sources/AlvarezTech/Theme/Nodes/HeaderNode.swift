import Publish
import Plot

extension Node where Context: HTML.BodyContext {
    
    static func navigationBar(for context: PublishingContext<AlvarezTech>, selectedSection: AlvarezTech.SectionID?) -> Node {
        let sectionIDs = AlvarezTech.SectionID.allCases
        
        return .header(
            .class("site-header"),
            .div(
                .class("outer site-nav-main"),
                .div(
                    .class("inner"),
                    .nav(
                        .class("site-nav"),
                        .div(
                            .class("site-nav-left-wrapper"),
                            .div(
                                .class("site-nav-left"),
                                .a(
                                    .class("site-nav-logo"),
                                    .href("/"),
                                    .img(
                                        .src("/images/icon.png")
                                    )
                                ),
                                .div(
                                    .class("site-nav-content"),
                                    .ul(
                                        .class("nav"),
                                        .forEach(sectionIDs) { section in
                                            .li(
                                                .a(
                                                    .href(context.sections[section].path),
                                                    .text(context.sections[section].title)
                                                )
                                            )
                                        },
                                        .li(
                                            .a(
                                                .href("/community"),
                                                .text("Community")
                                            )
                                        )
                                    )
                                )
                            )
                        ),
                        .div(
                            .class("site-nav-right"),
                            .div(
                                .class("social-links"),
                                .a(
                                    .class("social-link social-link-tw"),
                                    .href("https://twitter.com/alvarez_tech"),
                                    .target(.blank),
                                    .element(named: "svg", nodes: [
                                        .attribute(named: "viewBox", value: "0 0 32 32"),
                                        .attribute(named: "xmlns", value: "http://www.w3.org/2000/svg"),
                                        .element(named: "path", attributes: [
                                            .attribute(named: "d", value: "M30.063 7.313c-.813 1.125-1.75 2.125-2.875 2.938v.75c0 1.563-.188 3.125-.688 4.625a15.088 15.088 0 0 1-2.063 4.438c-.875 1.438-2 2.688-3.25 3.813a15.015 15.015 0 0 1-4.625 2.563c-1.813.688-3.75 1-5.75 1-3.25 0-6.188-.875-8.875-2.625.438.063.875.125 1.375.125 2.688 0 5.063-.875 7.188-2.5-1.25 0-2.375-.375-3.375-1.125s-1.688-1.688-2.063-2.875c.438.063.813.125 1.125.125.5 0 1-.063 1.5-.25-1.313-.25-2.438-.938-3.313-1.938a5.673 5.673 0 0 1-1.313-3.688v-.063c.813.438 1.688.688 2.625.688a5.228 5.228 0 0 1-1.875-2c-.5-.875-.688-1.813-.688-2.75 0-1.063.25-2.063.75-2.938 1.438 1.75 3.188 3.188 5.25 4.25s4.313 1.688 6.688 1.813a5.579 5.579 0 0 1 1.5-5.438c1.125-1.125 2.5-1.688 4.125-1.688s3.063.625 4.188 1.813a11.48 11.48 0 0 0 3.688-1.375c-.438 1.375-1.313 2.438-2.563 3.188 1.125-.125 2.188-.438 3.313-.875z")
                                        ])
                                    ])
                                ),
                                .a(
                                    .class("social-link social-link-fb"),
                                    .href("https://www.facebook.com/alvareztech"),
                                    .target(.blank),
                                    .element(named: "svg", nodes: [
                                        .attribute(named: "viewBox", value: "0 0 32 32"),
                                        .attribute(named: "xmlns", value: "http://www.w3.org/2000/svg"),
                                        .element(named: "path", attributes: [
                                            .attribute(named: "d", value: "M16 0c8.837 0 16 7.163 16 16s-7.163 16-16 16S0 24.837 0 16 7.163 0 16 0zm5.204 4.911h-3.546c-2.103 0-4.443.885-4.443 3.934.01 1.062 0 2.08 0 3.225h-2.433v3.872h2.509v11.147h4.61v-11.22h3.042l.275-3.81h-3.397s.007-1.695 0-2.187c0-1.205 1.253-1.136 1.329-1.136h2.054V4.911z")
                                        ])
                                    ])
                                )
                            )
                        )
                    )
                )
            )
        )
    }
}
