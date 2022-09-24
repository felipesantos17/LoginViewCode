//
//  UserDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Felipe Santos on 15/09/22.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var userDetailView: UserDetailView = {
        let view = UserDetailView()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        configConstraintsDescriptionCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubview() {
        self.addSubview(userDetailView)
    }
    
    public func setupCell(data: DataUser) {
        self.userDetailView.nameLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }
    
    private func configConstraintsDescriptionCell() {
        self.userDetailView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
