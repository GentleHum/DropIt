//
//  DropItViewController.swift
//  DropIt
//
//  Created by Owner on 1/8/17.
//  Copyright © 2017 Owner. All rights reserved.
//

import UIKit

class DropItViewController: UIViewController {


    @IBOutlet weak var gameView: DropItView! {
        didSet {
            gameView.addGestureRecognizer(
                UITapGestureRecognizer(target: self, action: #selector(addDrop(_:))))
            gameView.addGestureRecognizer(
                UIPanGestureRecognizer(target: gameView, action: #selector(DropItView.grabDrop(_:))))
            gameView.realGravity = true
        }
    }

    func addDrop(_ recognizer: UITapGestureRecognizer) {
        if recognizer.state == .ended {
            gameView.addDrop()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        gameView.animating = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        gameView.animating = false
    }
}
