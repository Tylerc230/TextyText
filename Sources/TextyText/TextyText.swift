import SwiftUI
extension Text: ExpressibleByStringInterpolation {
    public struct StringInterpolation: StringInterpolationProtocol {
        var output = Text("")

        public init(literalCapacity: Int, interpolationCount: Int) { }

        public mutating func appendLiteral(_ literal: String) {
            output = output + Text(literal)
        }

        public mutating func appendInterpolation(message: String, color: Color) {
            output = output + Text(message).foregroundColor(color)
        }
    }

    public init(stringLiteral value: String) {
        self.init(value)
    }

    public init(stringInterpolation: StringInterpolation) {
        self = stringInterpolation.output
    }
}
