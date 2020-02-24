# TextyText for SwiftUI

A micro framework that adds text style interpolation to Text views. 
With this framework, text style (color, font, weight etc) can be added to parts of a string using string interpolation. Some examples:
```
Text("Hi, I'm \("red", color: .red)")
Text("I'm a \("title", font: .title) text")
Text("Hi, I'm \("bold", bold: true)")
```

It is even possible to pass in a transform function of the form  `(Text) -> Text`
```
Text("Now I'm \("blue and italic", blueItalic(_:))")
func blueItalic(_ text: Text) -> Text {
    text
        .foregroundColor(.blue)
        .italic()
}

```
