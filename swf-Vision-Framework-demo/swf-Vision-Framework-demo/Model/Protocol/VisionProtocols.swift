//
//  VisionProtocols.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import Foundation
import UIKit

import Vision

protocol DrawFaceRectangleDelegate {
    // 顔を検出して結果を描画する
    func drawFaceRectangle(image: UIImage?, observation: VNFaceObservation) -> UIImage?
}
