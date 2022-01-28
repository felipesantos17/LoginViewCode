
import UIKit

class RegisterScreen: UIView {
    
    lazy var backButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "back"), for: .normal)
        
        return button
    }()
    
    lazy var imageAddUser: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "usuario")
        image.contentMode = .scaleAspectFit
        
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        self.addSubview(self.backButton)
        self.addSubview(self.imageAddUser)
    }
    
    private func setUpContraints(){
        
        NSLayoutConstraint.activate([
            self.imageAddUser.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.imageAddUser.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.imageAddUser.widthAnchor.constraint(equalToConstant: 150),
            self.imageAddUser.heightAnchor.constraint(equalToConstant: 150),
            
            self.backButton.topAnchor.constraint(equalTo: self.imageAddUser.topAnchor),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
        ])
    }

}
