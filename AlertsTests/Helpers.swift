import XCTest

let title = "title", message = "message"

func assertOKAlert(_ alert: UIAlertController) {
  XCTAssertEqual(alert.title, title)
  XCTAssertEqual(alert.message, message)
  XCTAssertEqual(alert.actions[0].title, "OK")
}

func assertYesNoAlert(_ alert: UIAlertController) {
  XCTAssertEqual(alert.title, title)
  XCTAssertEqual(alert.message, message)
  XCTAssertEqual(alert.actions[0].title, "No")
  XCTAssertEqual(alert.actions[1].title, "Yes")
}
