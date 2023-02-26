//
//  ConversationVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 24/02/2023.
//

import UIKit
import Localize_Swift

class ConversationVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var ConversationList: UITableView!
    @IBOutlet weak var BackBtn: UIButton!
    
    //VARIABLE'S
    
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
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

extension ConversationVC {
    func setupUI() {
        if Localize.currentLanguage() == "ar" {
            BackBtn.setImage(UIImage(named: "ForwordBack"), for: .normal)
        }
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
