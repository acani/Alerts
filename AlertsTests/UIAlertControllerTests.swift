import XCTest
import Alerts

class UIAlertControllerTests: XCTestCase {
  func testOKAlert() {
    let alert = UIAlertController.OKAlert(title: title, message: message)
    assertOKAlert(alert)
  }

  func testConfirm() {
    let alert = UIAlertController.yesNoAlert(title: title, message: message, handler: { _ in })
    assertYesNoAlert(alert)
  }
}
