import UIKit

final class ViewController: UIViewController {

    // MARK: - Private(set) properties

    @IBOutlet private(set) var username: UITextField!
    @IBOutlet private(set) var password: UITextField!

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Private methods

    private func performLogin(_ username: String,
                              _ password: String) {

        print("The username is: \(username)")
        print("The password is: \(password)")
    }
}

// MARK: - Extension

extension ViewController: UITextFieldDelegate {

    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {

        if textField === username {
            return !string.contains(" ")
        } else {
            return true
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if textField === username {
            password.becomeFirstResponder()
        } else {
            guard let username = username.text,
                  let password = password.text else {
                return false
            }
            self.password.resignFirstResponder()
            performLogin(username, password)
        }

        return false
    }
}
