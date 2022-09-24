//
//  SportTableTableViewCell.swift
//  LoginViewCode
//
//  Created by Felipe Santos on 21/09/22.
//

import UIKit

class SportTableTableViewCell: UITableViewCell {
    
    static let identifier: String = "SportTableTableViewCell"

    var sportTableViewCell: SportView = SportView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configConstraintsSportTableViewCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.sportTableViewCell.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportTableViewCell)
    }
    
    func configConstraintsSportTableViewCell() {
        self.sportTableViewCell.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
