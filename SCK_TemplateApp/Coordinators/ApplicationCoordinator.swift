import UIKit
import SwiftCoordinatorsKit

/*
 Главный координатор приложения
 Может производить базовые для приложения задачи, загружать другие координаторы, создавать микросервисы
 
 ApplicationCoordinator будет являться презентером и трансмиттером
 при этом он не будет иметь собственного отображаемого интерфейса,
 а будет транслировать через себя содержимое вложенных координаторов-презенторов
 */

protocol ApplicationCoordinatorProtocol: BasePresenter, Transmitter {
    // данный координатор имеет привязку к окну приложения
    var window: UIWindow? { get set }
}

final class ApplicationCoordinator: BasePresenter, ApplicationCoordinatorProtocol {
    
    var window: UIWindow?
    
    override var presenter: UIViewController? {
        didSet {
            window?.rootViewController = presenter
            window?.makeKeyAndVisible()
        }
    }

    override func startFlow(finishCompletion: (() -> Void)? = nil) {
        super.startFlow(finishCompletion: finishCompletion)
        
        // Запускаем координатор Инициализации
        let initializator = CoordinatorFactory.getInitializatorCoordinator(rootCoordinator: self)
        self.presenter = initializator.presenter
        initializator.startFlow {
            
//            // По окончании работы координатора инициализации
//            // должен отобразиться интерфейс приложения
//            let functionalCoordinator = CoordinatorFactory.getIFunctionalCoordinator(rootCoordinator: self)
//            functionalCoordinator.startFlow()
//            self.route(from: self.presenter!, to: functionalCoordinator.presenter!, method: .presentCard) {
//                self.presenter?.view.removeFromSuperview()
//                self.presenter = nil
//            }
                      
        }

    }
}
