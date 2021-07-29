/*
 Фабрика координаторов
 Используется для удобного создания и получения экземпляров классов координаторов
 */

import UIKit
import SwiftCoordinatorsKit

class CoordinatorFactory {
    
    // MARK: - Main App Coordinator
    // Главный координатор приложения
    @discardableResult
    static func getApplicationCoordinator() -> ApplicationCoordinatorProtocol {
        // в качестве презентера в координатор передаем nil
        // данный координатор будет отображать в своем презентере содержимое других подчиненных координаторов
        // подробнее об ApplicationCoordinator на странице его объявления
        return ApplicationCoordinator(presenter: nil)
    }
    
    // MARK: - Presenters
    
    @discardableResult
    static func getInitializatorCoordinator(rootCoordinator: Coordinator?) -> InitializatorCoordinatorProtocol {
        let controller = ControllerFactory.getInitializatorController()
        return InitializatorCoordinator(presenter: controller, rootCoordinator: rootCoordinator)
    }
//
//    @discardableResult
//    static func getFunctionalCoordinator(rootCoordinator: Coordinator?) -> FunctionalCoordinatorProtocol {
//        let controller = ControllerFactory.getFunctionalController()
//        return FunctionalCoordinator(presenter: controller, rootCoordinator: rootCoordinator)
//    }
//
//    @discardableResult
//    static func getViewCoordinator(rootCoordinator: Coordinator?) -> FunctionalCoordinatorProtocol {
//        let controller = ControllerFactory.getFunctionalController()
//        return FunctionalCoordinator(presenter: controller, rootCoordinator: rootCoordinator)
//    }

}
