import XCTest
@testable import TextField

final class ViewControllerTests: XCTestCase {

    func test_outlets_shouldBeConnected() {
        let sut = loadStoryboard()

        XCTAssertNotNil(sut.username, "The username textField should be connected")
        XCTAssertNotNil(sut.password, "The password textField should be connected")
    }

    func test_usernameField_attributesShouldBeSet() {
        let sut = loadStoryboard()
        let textField = sut.username!

        XCTAssertEqual(textField.textContentType, .username, "should have the right textContentType")
        XCTAssertEqual(textField.autocorrectionType, .no, "should have the right autocorrectionType")
        XCTAssertEqual(textField.returnKeyType, .next, "should have the right returnKeyType")
    }

    // MARK: - Helpers Methods

    private func loadStoryboard() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let identifier = String(describing: ViewController.self)
        let sut: ViewController = storyboard.instantiateViewController(identifier: identifier)

        sut.loadViewIfNeeded()

        return sut
    }
}
