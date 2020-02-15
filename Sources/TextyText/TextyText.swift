import SwiftUI
extension Text: ExpressibleByStringInterpolation {

    public init(stringLiteral value: String) {
        self = Text(value)
    }
    
    init(textInterpolation: TextInterpolation) {
        self = textInterpolation.output
    }
}

struct TextInterpolation: StringInterpolationProtocol {
    var output = Text("")
    init(literalCapacity: Int, interpolationCount: Int) { }
    
    mutating func appendLiteral(_ literal: String) {
        output = output + Text(literal)
    }
    
    mutating func appendInterpolation(_ text: String, color: Color) {
        output = output + Text(text).foregroundColor(color)
    }
}

