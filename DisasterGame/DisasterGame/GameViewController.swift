//
//  GameViewController.swift
//  DisasterGame
//
//  Created by Sydney Altobell on 3/3/18.
//  Copyright © 2018 Sydney Altobell. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let scene = GameScene(size: view.bounds.size)
//        let skView = view as! SKView
//        skView.showsFPS = true
//        skView.showsNodeCount = true
//        skView.ignoresSiblingOrder = true
//        scene.scaleMode = .resizeFill
//        skView.presentScene(scene)
//    }
//
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
    
    override func viewWillLayoutSubviews() {
        // Configure the view.
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        /* Sprite Kit applies additional optimizations to improve rendering performance */
        skView.ignoresSiblingOrder = true
        
        let scene = GameScene(size: skView.frame.size)
        
        /* Set the scale mode to scale to fit the window */
        scene.scaleMode = .aspectFill
        
        skView.presentScene(scene)
    }
}
