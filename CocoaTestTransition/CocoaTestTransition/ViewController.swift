//
//  ViewController.swift
//  CocoaTestTransition
//
//  Created by Roman Mishchenko on 02.02.2020.
//  Copyright © 2020 Roman Mishchenko. All rights reserved.
//

import UIKit
import SpriteKit
class ViewController: UIViewController, UIViewControllerDelegate {
    
    @IBAction func transition(_ sender: Any) {
        self.view = GameView()
        let gameScene = SKScene(fileNamed: "Scene")!
        
        if let view = self.view as? GameView {
            view.myDelegate = self
            view.presentScene(gameScene)
        }
        
    }
    
    func transitionToView() {
        performSegue(withIdentifier: "ShowCat", sender: self)
    }
    
}

