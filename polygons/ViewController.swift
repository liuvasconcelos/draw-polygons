//
//  ViewController.swift
//  polygons
//
//  Created by Mac Mini Novo on 26/02/19.
//  Copyright © 2019 Mac Mini Novo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var array = [CGPoint]()
    var demoView = DemoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(tapped))
        view.addGestureRecognizer(tapGR)
    }
    
    @objc func tapped(gr:UITapGestureRecognizer) {
        let loc:CGPoint = gr.location(in: gr.view)
        
        self.demoView.removeFromSuperview()
        array.append(loc)

        demoView = DemoView(frame: CGRect(x: 0,
                                          y: 0,
                                          width: self.view.frame.width,
                                          height: self.view.frame.height))
        demoView.array = array
        self.view.addSubview(demoView)
    }
}

