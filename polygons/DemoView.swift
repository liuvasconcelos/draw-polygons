//
//  DemoView.swift
//  polygons
//
//  Created by Mac Mini Novo on 27/02/19.
//  Copyright © 2019 Mac Mini Novo. All rights reserved.
//

import UIKit

class DemoView: UIView {

    var path: UIBezierPath!
    
    var array = [CGPoint]()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        self.drawPath()

        UIColor.orange.setFill()
        path.fill()

        UIColor.purple.setStroke()
        path.stroke()
    }

    
    func drawPath() {
        path = UIBezierPath()

        guard let startPoint = array.first else { return }
        
        path.move(to: startPoint)
        
        for point in array.dropFirst() {
            path.addLine(to: point)
        }
        
        path.close()

    }

}
