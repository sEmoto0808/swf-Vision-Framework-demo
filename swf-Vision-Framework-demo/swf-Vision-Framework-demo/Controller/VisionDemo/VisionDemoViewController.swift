//
//  VisionDemoViewController.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

import Vision

class VisionDemoViewController: UIViewController {

    private let vision = VisionHelper()
    private let originalImage = UIImage(named: "many_people")
    
    // 顔検出の結果を描画した画像
    private var faceImage: UIImage?
    
    @IBOutlet weak var originalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        faceImage = vision.detectFaceWithPhoto(photo: originalImage)
        originalImageView.image = faceImage
    }
}
