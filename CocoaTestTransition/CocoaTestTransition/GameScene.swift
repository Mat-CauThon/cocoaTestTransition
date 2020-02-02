//
//  GameScene.swift
//  Tamblr
//
//  Created by Roman Mishchenko on 02.02.2020.
//  Copyright © 2020 Roman Mishchenko. All rights reserved.
//

import Foundation
import SpriteKit


class GameScene: SKScene {
    
    var width = UIScreen.main.bounds.size.width
    var height = UIScreen.main.bounds.size.height
    var textures: [SKTexture] = []
    
    func loadTextures() {
        
        
        
        var localTexture: [SKTexture] = []
        for i in 1...30 {
            let texture = SKTexture(imageNamed: "frame-\(i).png")
            localTexture.append(texture)
        }
        self.textures = localTexture
    }
    
    override func sceneDidLoad() {
        self.backgroundColor = .white
        
        let loadSize = CGSize(width: width/2, height: width/2)
        let loadSprite = SKSpriteNode(color: .white, size: loadSize)
        loadSprite.position = CGPoint(x: 0, y: 0)
        addChild(loadSprite)
        
        loadTextures()
        
        let animations = SKAction.animate(with: textures,
                                          timePerFrame: 0.05,
                                          resize: false,
                                          restore: false)
        loadSprite.run(animations) {
            if let view = self.view as? GameView {
                view.myDelegate?.transitionToView()
            }
        }
        
    }
}
