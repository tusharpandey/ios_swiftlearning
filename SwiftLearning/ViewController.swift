import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onButtonClicked(_ sender: Any) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "UserListingView", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "UserListingController")
        UIApplication.shared.windows.first?.rootViewController = viewController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
}

