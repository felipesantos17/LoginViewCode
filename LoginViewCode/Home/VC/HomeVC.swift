//
//  HomeVCViewController.swift
//  LoginViewCode
//
//  Created by Felipe Santos on 22/08/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?

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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let color:[UIColor] = [.orange, .red, .blue, .brown, .gray]
        let cell: UITableViewCell = UITableViewCell()
        cell.backgroundColor = color[indexPath.row]
        return cell
    }
}
