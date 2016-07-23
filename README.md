# Alerts

Alert & confirm methods for `UIViewController`

Setup: [How to add a Git repository to your Xcode project][1]

Usage:

* `UIViewController.alertTitle(_:message:)`

    ```swift
    alertTitle("Alert", message: "This is an alert with an OK button.")
    ```

    ```swift
    alertTitle("Alert", message: "This is an alert with an OK button.") { _ in
        // Code here runs after the user has tapped OK.
    }
    ```

* `UIViewController.confirmTitle(_:message:)`

    ```swift
    confirmTitle("Confirm", message: "This is an alert with No & Yes buttons.")
    ```

    ```swift
    confirmTitle("Confirm", message: "This is an alert with No & Yes buttons.") { _ in
        // Code here runs after the user has tapped Yes.
    }
    ```

Released under the [Unlicense][2].


  [1]: https://github.com/acani/Libraries
  [2]: http://unlicense.org
