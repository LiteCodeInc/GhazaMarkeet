//
//  SplashPresenter.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 18/02/2023.
//

import Foundation

protocol SplashResponder: AnyObject {
    func timerEnded()
}

class SplashPresenter: NSObject {
    
    weak var delegate: SplashResponder?
    
    override init() {}
    
    init(view responder: SplashResponder) {
        self.delegate = responder
    }
    
    func runTimer() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
            self.delegate?.timerEnded()
            timer.invalidate()
        }
    }
    
}
