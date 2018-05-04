//
//  VisionDemoViewController.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

import Vision

class DetectFaceViewController: UIViewController {

    private let vision = VisionHelper()
    private let originalImage = UIImage(named: "many_people")
    
    // 顔検出の結果を描画した画像
    private var faceImage: UIImage?
    
    @IBOutlet weak var originalImageView: UIImageView!
    
    
    class func create() -> DetectFaceViewController {
        
        if let vc = UIStoryboard
            .viewController(storyboardName: DetectFaceViewController.className,
                            identifier: DetectFaceViewController.className) as? DetectFaceViewController {
            
            return vc
        }
        fatalError("unwap DetectFaceViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        faceImage = vision.detectFaceWithPhoto(photo: originalImage)
        originalImageView.image = faceImage
    }
}
