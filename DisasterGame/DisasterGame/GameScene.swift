//
//  GameScene.swift
//  DisasterGame
//
//  Created by Sydney Altobell on 3/3/18.
//  Copyright © 2018 Sydney Altobell. All rights reserved.
//

import SpriteKit

private let kAnimalNodeName = "movable"

class GameScene: SKScene {
    
    let food = SKSpriteNode(imageNamed: "food")
    let water_gallon = SKSpriteNode(imageNamed: "water_gallon")
    let flashlight = SKSpriteNode(imageNamed: "flashlight")
    let radio = SKSpriteNode(imageNamed: "radio")
    let medicine = SKSpriteNode(imageNamed: "medicine")
    let hand_sanitizer = SKSpriteNode(imageNamed: "hand_sanitizer")
    let box = SKSpriteNode(imageNamed: "box")
    let batteries = SKSpriteNode(imageNamed: "batteries")
    let first_aid_kit = SKSpriteNode(imageNamed: "first_aid_kit")
    
    var selectedNode = SKSpriteNode()
    
    override func didMove(to: SKView) {
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        box.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        box.position = CGPoint(x: 0, y: 0)
        box.setScale(0.5)
        box.name = kAnimalNodeName
        food.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        food.position = CGPoint(x: 100, y: 100)
        food.name = kAnimalNodeName
        self.addChild(box)
        self.addChild(food)
    }
    
    func selectNodeForTouch(touchLocation: CGPoint) {
        // 1
        let touchedNode = self.atPoint(touchLocation)
        
        if touchedNode is SKSpriteNode {
            // if you dont touch a node, do nothing
            if !selectedNode.isEqual(touchedNode) {
                selectedNode.removeAllActions()
                selectedNode.run(SKAction.rotate(toAngle: 0.0, duration: 0.1))
            
                selectedNode = touchedNode as! SKSpriteNode
                
                // 3
                if touchedNode.name! == kAnimalNodeName {
                    let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(degree: -4.0), duration: 2),
                                                      SKAction.rotate(byAngle: 0.0, duration: 0.1),
                                                      SKAction.rotate(byAngle: degToRad(degree: 4.0), duration: 2)])
                    selectedNode.run(SKAction.repeatForever(sequence))
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first as? UITouch!
        
        let positionInScene = touch?.location(in: self.view)
        selectNodeForTouch(touchLocation: positionInScene!)
        
        //selectNodeForTouch(touchLocation: CGPoint(positionInScene))
    }
    
    func degToRad(degree: Double) -> CGFloat {
        return CGFloat(Double(degree) / 180.0 * M_PI)
    }
    

    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self)
            selectedNode.position.x = location.x
            selectedNode.position.y = location.y
//                box.position.x = box_location.x
//                box.position.y = box_location.y
//
//
//            let food_location = touch.location(in: self)
//            food.position.x = food_location.x
//            food.position.y = food_location.y
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
