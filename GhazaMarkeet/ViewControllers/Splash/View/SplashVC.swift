//
//  SplashVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 18/02/2023.
//

import UIKit

class SplashVC: UIViewController, SplashResponder {
    
    //VARIABLE'S
    var presenter = SplashPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = SplashPresenter(view: self)
        presenter.runTimer()
    }
    
    deinit {
        print("Splash Remove From Memory")
    }
    
    // Responders Method's
    func timerEnded() {
        Router.changeRootView(from: self, to: AuthTypeVC())
    }
    
}
