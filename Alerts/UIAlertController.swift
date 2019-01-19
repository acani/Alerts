import UIKit

extension UIAlertController {
  public static func OKAlert(title: String?, message: String?, handler: ((UIAlertAction) -> Swift.Void)? = nil) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: handler))
    return alert
  }

  public static func yesNoAlert(title: String?, message: String?, handler: @escaping (UIAlertAction) -> Swift.Void) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
    alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: handler))
    return alert
  }
}
