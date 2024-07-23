import XCTest
@testable import TextField

final class ViewControllerTests: XCTestCase {

    func test_outlets_shouldBeConnected() {
        let sut = loadStoryboard()

        sut.loadViewIfNeeded()

        XCTAssertNotNil(sut.username, "The username textField should be connected")
        XCTAssertNotNil(sut.password, "The password textField should be connected")
    }

    // MARK: - Helpers Methods

    private func loadStoryboard() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let identifier = String(describing: ViewController.self)
        let sut: ViewController = storyboard.instantiateViewController(identifier: identifier)

        return sut
    }
}
