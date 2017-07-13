# swift-playground-templates

A collection of helpful Xcode playground templates.

  - [Trait-Based View](#trait-based-view)
  - [Unit Test](#unit-test)


## Install

Run `make` from the repository root.


## Trait-Based View

Generates a trait-configurable, view-based playground.

``` swift
import PlaygroundSupport
import UIKit

final class MyViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    let stackView = UIStackView(frame: self.view.bounds)
    stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    self.view.addSubview(stackView)

    let label = UILabel()
    label.text = "Hello, world!"
    label.textAlignment = .center
    label.sizeToFit()

    stackView.addArrangedSubview(label)
  }
}

PlaygroundPage.current.liveView = playgroundController(
  for: MyViewController(),
  device: .phone4_7inch,
  orientation: .portrait,
  traits: .init(preferredContentSizeCategory: .medium)
)
```

## Unit Test

Generates a playground with a unit test.

``` swift
import XCTest

final class UnitTests: XCTestCase {
  override func setUp() {
    super.setUp()
    // Put set-up code here.
  }

  override func tearDown() {
    // Put tear-down code here.
    super.tearDown()
  }

  func testExample() {
    XCTAssert(true)
  }
}

UnitTests.defaultTestSuite.run()
```
