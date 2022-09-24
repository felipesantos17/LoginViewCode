//
//  SportCollectionViewCell.swift
//  LoginViewCode
//
//  Created by Felipe Santos on 24/09/22.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "SportCollectionViewCell"
    
    let sportCollectionViewCellScreen: SportCollectionViewCellScreen = {
        let cellScreen = SportCollectionViewCellScreen()
        cellScreen.translatesAutoresizingMaskIntoConstraints = false
        cellScreen.layer.borderWidth = 2
        cellScreen.layer.borderColor = UIColor.blue.cgColor
        cellScreen.layer.cornerRadius = 20
        return cellScreen
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupCell(data: Sport) {
        self.sportCollectionViewCellScreen.sportNameLabel.text = data.name
        self.sportCollectionViewCellScreen.imageView.image = UIImage(named: data.image)
    }
    
    func addSubview() {
        self.contentView.addSubview(self.sportCollectionViewCellScreen)
    }
    
    func setConstraints() {
        self.sportCollectionViewCellScreen.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
