import UIKit

public func topmostViewController() -> UIViewController {
    var topmostViewController = UIApplication.sharedApplication().delegate!.window!!.rootViewController!
    while let presentedViewController = topmostViewController.presentedViewController {
        topmostViewController = presentedViewController
    }
    return topmostViewController
}

public func alert(title title: String?, message: String?, handler: ((UIAlertAction) -> Void)? = nil) {
    let alert = UIAlertController.alert(title: title, message: message, handler: handler)
    topmostViewController().presentViewController(alert, animated: true, completion: nil)
}

public func alertError(error: NSError, handler: ((UIAlertAction) -> Void)? = nil) {
    let alert = UIAlertController.alertError(error, handler: handler)
    topmostViewController().presentViewController(alert, animated: true, completion: nil)
}

public func confirm(title title: String?, message: String?, handler: (UIAlertAction) -> Void) {
    let alert = UIAlertController.confirm(title: title, message: message, handler: handler)
    topmostViewController().presentViewController(alert, animated: true, completion: nil)
}
