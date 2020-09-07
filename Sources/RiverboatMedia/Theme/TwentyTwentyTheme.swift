import Publish

extension Theme where Site == RiverboatMedia {
    
    static var twentyTwenty: Self {
        Theme(htmlFactory: TwentyTwentyHTMLFactory())
    }
}
