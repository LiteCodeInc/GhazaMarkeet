//
//  ChatListVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit

class ChatListVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var ChatList: UITableView!
    
    //VARIABLE'S
    var presenter = ChatPresenter()
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.heightAnchor.constraint(equalToConstant: 0)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    
    //IBACTION'S

}

extension ChatListVC {
    
    func setupUI() {
        
    }
    
}


extension ChatListVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(ChatItemCell.self, indexPath: indexPath)
        cell.config(data: presenter.data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Router.pushVC(from: self, to: ConversationVC())
    }
    
    
}
