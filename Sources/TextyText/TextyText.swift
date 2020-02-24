import SwiftUI
extension Text: ExpressibleByStringInterpolation {
    public struct StringInterpolation: StringInterpolationProtocol {
        var output = Text("")

        public init(literalCapacity: Int, interpolationCount: Int) { }

        public mutating func appendLiteral(_ literal: String) {
            output += Text(literal)
        }

        public mutating func appendInterpolation(_ message: String, color: Color? = nil, font: Font? = nil, fontWeight: Font.Weight? = nil, bold: Bool = false, italic: Bool = false) {
            let text = Text(message)
            if let color = color {
                output += text.foregroundColor(color)
            }
            if let font = font {
                output += text.font(font)
            }
            if let fontWeight = fontWeight {
                output += text.fontWeight(fontWeight)
            }
            if bold {
                output += text.bold()
            }
            
            if italic {
                output += text.italic()
            }
        }
        
        public mutating func appendInterpolation(_ message: String, _ transform: (Text) -> Text) {
            output += transform(Text(message))
        }
    }

    public init(stringLiteral value: String) {
        self.init(value)
    }

    public init(stringInterpolation: StringInterpolation) {
        self = stringInterpolation.output
    }
}

private extension Text {
    static func +=(lhs: inout Text, rhs: Text) {
        lhs = lhs + rhs
    }
}
