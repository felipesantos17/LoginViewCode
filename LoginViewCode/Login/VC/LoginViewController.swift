import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    var auth: Auth?
    var alert: Alert?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = Alert(controller: self)
    }
   
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        let vc: HomeVC = HomeVC()
        self.navigationController?.pushViewController(vc, animated: true)
//        guard let login = self.loginScreen else { return }
//        
//        self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { usuario, error in
//            if error != nil {
//                self.alert?.getAlert(titulo: "Atenção", mensagem: "dados incorretos")
//            } else {
//                if usuario == nil {
//                    self.alert?.getAlert(titulo: "Atenção", mensagem: "Tivemos um problema, tente mais tarde.")
//                } else {
//                    self.alert?.getAlert(titulo: "Sucesso", mensagem: "Logado")
//                }
//            }
//        })
    }
    
    func actionRegisterButton() {
        let viewController: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.loginScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
