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
    var data: [Sport] = []
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configConstraintsSportTableViewCell()
        self.sportTableViewCell.configProtocolsColletionView(delegate: self, dataSource: self)
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
    
    public func dataColletion(data: [Sport]) {
        self.data = data
    }
}

extension SportTableTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: SportCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: SportCollectionViewCell.identifier, for: indexPath) as? SportCollectionViewCell
        cell?.setupCell(data: self.data[indexPath.row])
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 100)
    }
    
}
