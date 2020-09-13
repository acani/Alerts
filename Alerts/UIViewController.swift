import UIKit
import UIHelper

public func alertTitle(
  _ title: String?,
  message: String?,
  handler: ((UIAlertAction) -> Void)? = nil
) {
  let alert = UIAlertController.OKAlert(title: title, message: message, handler: handler)
  UIApplication.auh_topmostViewController.present(alert, animated: true)
}

public func confirmTitle(
  _ title: String?,
  message: String?,
  handler: @escaping (UIAlertAction) -> Void
) {
  let alert = UIAlertController.yesNoAlert(title: title, message: message, handler: handler)
  UIApplication.auh_topmostViewController.present(alert, animated: true)
}
