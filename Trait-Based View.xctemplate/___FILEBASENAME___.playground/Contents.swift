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
