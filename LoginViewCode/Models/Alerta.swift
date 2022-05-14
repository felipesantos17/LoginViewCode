import Foundation
import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atenção", mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let backView = UIAlertAction(title: "Logar", style: .default) { _ in
            self.controller.navigationController?.popViewController(animated: true)
        }

        alerta.addAction(backView)
        controller.present(alerta, animated: true, completion: nil)
    }
}
