//
//  ConversationVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 24/02/2023.
//

import UIKit

class ConversationVC: UIViewController {

    //IBOUTLET'S
    
    
    //VARIABLE'S
    
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.heightAnchor.constraint(equalToConstant: 0)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    //IBACTION'S
    @IBAction func BackBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension ConversationVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(MessageCell.self, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
}
