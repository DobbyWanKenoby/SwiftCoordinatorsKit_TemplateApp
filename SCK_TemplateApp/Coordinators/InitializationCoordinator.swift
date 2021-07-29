
import UIKit
import SwiftCoordinatorsKit

protocol InitializatorCoordinatorProtocol: BasePresenter, Transmitter {}

class InitializatorCoordinator: BasePresenter, InitializatorCoordinatorProtocol {
    
    override func startFlow(finishCompletion: (() -> Void)? = nil) {
        super.startFlow(finishCompletion: finishCompletion)
        // какое действие будет выполнено по окончании инициализации
        (self.presenter as? InitializatorControllerProtocol)?.initializationDidEnd = {
            self.finishFlow()
        }
        // тут могут быть различные операции инициализации
        // вроде загрузки данных из сети
        // при этом можно настроить обмен данными с базовым вью контроллером
        // чтобы отображать процесс выполнения операций

    }
    
}
