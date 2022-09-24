//
//  HomeVCViewController.swift
//  LoginViewCode
//
//  Created by Felipe Santos on 22/08/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    var data:[DataUser] = [
        DataUser(name: "Caio", nameImage: "menino1"),
        DataUser(name: "Felipe", nameImage: "menino2"),
        DataUser(name: "Gabi", nameImage: "menina1"),
    ]

    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableViewDelegate(delegate: self, dataSource: self)
    }
    

}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3 {
            let cell: SportTableTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SportTableTableViewCell.identifier, for: indexPath) as? SportTableTableViewCell
            
            return cell ?? UITableViewCell()
        }
        
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setupCell(data: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
