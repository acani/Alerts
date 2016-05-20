import UIKit

public func topmostViewController() -> UIViewController {
    var topmostViewController = UIApplication.sharedApplication().delegate!.window!!.rootViewController!
    while let presentedViewController = topmostViewController.presentedViewController {
        topmostViewController = presentedViewController
    }
    return topmostViewController
}

public func alert(title title: String?, message: String?, handler: ((UIAlertAction) -> Void)? = nil) {
    let alert = UIAlertController.OKAlert(title: title, message: message, handler: handler)
    topmostViewController().presentViewController(alert, animated: true, completion: nil)
}

public func confirm(title title: String?, message: String?, handler: (UIAlertAction) -> Void) {
    let alert = UIAlertController.yesNoAlert(title: title, message: message, handler: handler)
    topmostViewController().presentViewController(alert, animated: true, completion: nil)
}
