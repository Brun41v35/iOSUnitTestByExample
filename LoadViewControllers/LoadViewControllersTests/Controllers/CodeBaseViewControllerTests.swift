//
//  CodeBaseViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Bruno Silva on 20/07/24.
//

import XCTest
@testable import LoadViewControllers

final class CodeBaseViewControllerTests: XCTestCase {

    func test_loading() {
        let sut = CodeBaseViewController(data: "DUMMY")

        sut.loadViewIfNeeded()

        // Asserts something here..
    }
}
