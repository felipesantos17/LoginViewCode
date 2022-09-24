//
//  SportCollectionViewCellScreen.swift
//  LoginViewCode
//
//  Created by Felipe Santos on 24/09/22.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var sportNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .darkGray
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.configImageViewConstraints()
        self.configSportNameLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.addSubview(imageView)
        self.addSubview(sportNameLabel)
    }
    
    func configImageViewConstraints() {
        self.imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)        }
    }
    
    func configSportNameLabelConstraints() {
        self.sportNameLabel.snp.makeConstraints { make in
            make.top.equalTo(self.imageView.snp.bottom).offset(10)
            make.leading.equalTo(self.imageView.snp.leading)
            make.trailing.equalTo(self.imageView.snp.trailing)
            make.bottom.equalToSuperview().inset(10)
            make.height.equalTo(20)
        }
    }
}
