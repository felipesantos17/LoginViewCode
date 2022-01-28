//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Felipe Santos on 16/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
    }
   
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        print("deu certo login")
    }
    
    func actionRegisterButton() {
        print("deu certo register")
        let viewController: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    // aprender como fazer para abrir o teclado e fechar ele depois
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}
