//
//  StartUpViewController.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

class StartUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
}

extension StartUpViewController {
    
    @IBAction func didTapDetectFace(_ sender: Any) {
        
        let vc = DetectFaceViewController.create()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
