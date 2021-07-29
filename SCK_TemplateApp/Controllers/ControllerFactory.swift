/*
 Фабрика вью контроллеров
 Используется для удобного создания и получения экземпляров классов контроллеров
 */

import UIKit

class ControllerFactory {
    
    // Контроллер инициализатора приложения
    // Запускается и отображается первым и в процессе того, как координатор производит различные первичные операции, вроде загрузки данных из сети, сохранения данных в базу и т.д.
    static func getInitializatorController() -> InitializatorControllerProtocol {
        return InitializatorController.getInstance()
    }

}
