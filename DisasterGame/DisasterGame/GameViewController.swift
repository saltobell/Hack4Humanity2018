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
<<<<<<< HEAD
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
=======

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "GameScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameScene? {
                
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .aspectFill
                
                // Present the scene
                if let view = self.view as! SKView?
                {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    @IBAction func Title(_ sender: Any) {
        
       
    }
    
   @IBOutlet var Tap_Main_Screen: UITapGestureRecognizer!
    override var prefersStatusBarHidden: Bool {
        return true
>>>>>>> 220300a721410656b40a42ce05258c5497cfece5
    }
    
    
    
}
