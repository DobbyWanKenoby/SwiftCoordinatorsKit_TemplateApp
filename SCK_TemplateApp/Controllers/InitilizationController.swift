import UIKit

/*
 Контроллер, отображаемый в ходе работы InitializationCoordinator
 */

protocol InitializatorControllerProtocol where Self: UIViewController {
    var initializationDidEnd: (() -> Void)? { get set }
}

class InitializatorController: UIViewController, InitializatorControllerProtocol {

    var initializationDidEnd: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //initializationDidEnd?()
    }
}
