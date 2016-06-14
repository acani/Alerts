import UIKit
import UIHelper

public func alert(title title: String?, message: String?, handler: ((UIAlertAction) -> Void)? = nil) {
    let alert = UIAlertController.OKAlert(title: title, message: message, handler: handler)
    UIApplication.auh_topmostViewController.presentViewController(alert, animated: true, completion: nil)
}

public func confirm(title title: String?, message: String?, handler: (UIAlertAction) -> Void) {
    let alert = UIAlertController.yesNoAlert(title: title, message: message, handler: handler)
    UIApplication.auh_topmostViewController.presentViewController(alert, animated: true, completion: nil)
}
