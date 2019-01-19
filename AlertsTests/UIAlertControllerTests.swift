import XCTest
import Alerts

class UIAlertControllerTests: XCTestCase {
  func testOKAlert() {
    assertOKAlert(UIAlertController.OKAlert(title: title, message: message))
  }

  func testConfirm() {
    assertYesNoAlert(UIAlertController.yesNoAlert(title: title, message: message, handler: { _ in }))
  }
}
