import UIKit

extension UIAlertController {
    public static func alert(title title: String?, message: String?, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: handler))
        return alert
    }

    public static func alertError(error: NSError, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let title = error.userInfo["UIAlertControllerTitle"] as! String?
        var errorMessage: String?
        if let errorDescription = error.userInfo[NSLocalizedDescriptionKey] as! String? {
            errorMessage = errorDescription
            if let recoverySuggestion = error.userInfo[NSLocalizedRecoverySuggestionErrorKey] as! String? {
                errorMessage! += " " + recoverySuggestion
            }
        } else {
            errorMessage = error.userInfo[NSLocalizedRecoverySuggestionErrorKey] as! String?
        }
        var message = error.userInfo["UIAlertControllerMessage"] as! String? ?? errorMessage
        if title == nil && message == nil { message = error.localizedDescription }
        return UIAlertController.alert(title: title, message: message, handler: handler)
    }

    public static func confirm(title title: String?, message: String?, handler: (UIAlertAction) -> Void) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "No", style: .Cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Yes", style: .Default, handler: handler))
        return alert
    }
}
