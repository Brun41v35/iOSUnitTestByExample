//
//  CodeBaseViewController.swift
//  LoadViewControllers
//
//  Created by Bruno Silva on 19/07/24.
//

import UIKit

final class CodeBaseViewController: UIViewController {

    // MARK: - Private Properties

    private let data: String

    // MARK: - Init

    init(data: String) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        print("=== Creates view Here ===")
    }
}
