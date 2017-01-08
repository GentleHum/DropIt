//
//  NamedBezierPathsView.swift
//  DropIt
//
//  Created by Owner on 1/8/17.
//  Copyright © 2017 Owner. All rights reserved.
//

import UIKit

class NamedBezierPathsView: UIView {
    var bezierPaths = [String: UIBezierPath]() {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
}
