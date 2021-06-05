# DotKit+Logic

A description of this package.

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/E13Lau/DotKit-Logic.git", from: "0.0.1"),
]
```

```ruby
pod 'DotKit+Logic', '~> 0.0.1'
```

## Usage

```swift
UILabel()
    .dk
    .frame(CGRect(x: 0, y: 200, width: 200, height: 20))
    .textAlignment(.center)
    .if(Bool.random(), {
        $0.text("Bool.random() = True")
        .textColor(.black)
    }, else: {
        $0.text("Bool.random() = False")
        .textColor(.red)
    })
    .if {
        $0.superview == nil
    } true: {
        $0.asSubviewAdd(to: view)
    }
}
```
