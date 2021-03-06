//
//  SceneManager.swift
//  MistakeIt
//
//  Created by IgorMiyamoto on 19/11/20.
//

import SpriteKit
import UIKit

protocol SceneManager {
    func loadScene(withIdentifier identifier: LevelState)
    
}

private let sceneSize = CGSize(width: 828, height: 1792)

extension SceneManager where Self: SKScene {

     // No xCode level editor
    func loadScene(withIdentifier identifier: LevelState) {

        let scene: SKScene

        switch identifier {
            case .lamp:
                scene = FaseLampada(size: sceneSize)
            case .peni:
                scene = FasePenicilina(size: sceneSize)
            case .paper:
                scene = PaperScene(size: sceneSize)
            case .pace:
                scene = Pacemaker(size: sceneSize)
            case .credits:
                scene = Credits(size: sceneSize)
        default:
                scene = FaseLampada(size: sceneSize)
        }

        let transition = SKTransition.crossFade(withDuration: 1)
        scene.scaleMode = .aspectFill
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        view?.presentScene(scene, transition: transition)
    }

      // With xCode level editor
//     func loadScene(withIdentifier identifier: SceneIdentifier) {
//
//           guard let scene = SKScene(fileNamed: identifier.rawValue) else { return }
//           scene.scaleMode = .aspectFill
//           let transition = SKTransition...
//           view?.presentScene(scene, transition: transition)
//     }
}
