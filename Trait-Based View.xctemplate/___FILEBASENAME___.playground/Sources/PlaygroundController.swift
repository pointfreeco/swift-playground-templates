import UIKit

public func playgroundController(
  for viewController: UIViewController,
  device: Device = .phone4_7inch,
  orientation: Orientation = .portrait,
  traits: UITraitCollection = .init())
  -> UIViewController
{
  return playgroundController(
    for: viewController,
    size: device.size(for: orientation),
    traits: .init(
      traitsFrom: [
        device.traits(for: orientation),
        traits
      ]
    )
  )
}

public func playgroundController(
  for viewController: UIViewController,
  size: CGSize,
  traits: UITraitCollection = .init())
  -> UIViewController
{
  let scale = PlaygroundController.scale
  let playgroundSize = CGSize(width: size.width * scale, height: size.height * scale)
    
  let parent = UIViewController()
  parent.view.frame.size = playgroundSize
  parent.preferredContentSize = playgroundSize
  parent.view.addSubview(viewController.view)
  parent.addChild(viewController)

  viewController.view.transform = CGAffineTransform(scaleX: scale, y: scale)

  viewController.view.translatesAutoresizingMaskIntoConstraints = false
  NSLayoutConstraint.activate([
    NSLayoutConstraint(item: viewController.view, attribute: .centerX, relatedBy: .equal, toItem: parent.view, attribute: .centerX, multiplier: 1, constant: 0),
    NSLayoutConstraint(item: viewController.view, attribute: .centerY, relatedBy: .equal, toItem: parent.view, attribute: .centerY, multiplier: 1, constant: 0),
    NSLayoutConstraint(item: viewController.view, attribute: .width, relatedBy: .equal, toItem: parent.view, attribute: .width, multiplier: 1/scale, constant: 0),
    NSLayoutConstraint(item: viewController.view, attribute: .height, relatedBy: .equal, toItem: parent.view, attribute: .height, multiplier: 1/scale, constant: 0)
  ])

  parent.view.backgroundColor = .white

  parent.setOverrideTraitCollection(traits, forChild: viewController)

  return parent
}

public struct PlaygroundController {
    public static var scale: CGFloat = 1.0
}

public enum Orientation {
  case portrait
  case landscape
}

public enum Device {
  case phone3_5inch
  case phone4inch
  case phone4_7inch
  case phone5_5inch
  case pad
  case pad12_9inch

  var portraitSize: CGSize {
    switch self {
    case .phone3_5inch:
      return .init(width: 320, height: 480)
    case .phone4inch:
      return .init(width: 320, height: 568)
    case .phone4_7inch:
      return .init(width: 375, height: 667)
    case .phone5_5inch:
      return .init(width: 414, height: 736)
    case .pad:
      return .init(width: 768, height: 1024)
    case .pad12_9inch:
      return .init(width: 1024, height: 1366)
    }
  }

  var landscapeSize: CGSize {
    let portraitSize = self.portraitSize
    return .init(width: portraitSize.height, height: portraitSize.width)
  }

  func size(for orientation: Orientation) -> CGSize {
    switch orientation {
    case .portrait:
      return self.portraitSize
    case .landscape:
      return self.landscapeSize
    }
  }

  func traits(for orientation: Orientation) -> UITraitCollection {
    switch (self, orientation) {
    case (.phone3_5inch, .portrait), (.phone4inch, .portrait), (.phone4_7inch, .portrait), (.phone5_5inch, .portrait):
      return .init(
        traitsFrom: [
          .init(horizontalSizeClass: .compact),
          .init(verticalSizeClass: .regular),
          .init(userInterfaceIdiom: .phone)
        ]
      )
    case (.phone3_5inch, .landscape), (.phone4inch, .landscape), (.phone4_7inch, .landscape):
      return .init(
        traitsFrom: [
          .init(horizontalSizeClass: .compact),
          .init(verticalSizeClass: .compact),
          .init(userInterfaceIdiom: .phone)
        ]
      )
    case (.phone5_5inch, .landscape):
      return .init(
        traitsFrom: [
          .init(horizontalSizeClass: .regular),
          .init(verticalSizeClass: .compact),
          .init(userInterfaceIdiom: .phone)
        ]
      )
    case (.pad, _), (.pad12_9inch, _):
      return .init(
        traitsFrom: [
          .init(horizontalSizeClass: .regular),
          .init(verticalSizeClass: .regular),
          .init(userInterfaceIdiom: .pad)
        ]
      )
    }
  }
}
