//
//  VisionHelper.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit
import Vision

class VisionHelper: NSObject {
    
    func detectFaceWithPhoto(photo: UIImage?) -> UIImage? {
        
        var photo = photo
        
        // 顔検出のRequest
        let request = VNDetectFaceRectanglesRequest { (request, error) in
            
            // Request完了後の処理
            for observation in request.results as! [VNFaceObservation] {
                // 検出された顔の数だけobservationが取得できる
                //print(observation)
                
                photo = self.drawFaceRectangle(image: photo, observation: observation)
            }
        }
        
        guard let drawnPhoto = photo else {
            print("no photo ...")
            return nil
        }
        
        /* Vision.frameworkで使用できる画像の型は以下の５つ
         *
         * CVPixelBufferRef
         * CGImageRef
         * CIImage
         * NSURL
         * NSData
         */
        if let cgImage = drawnPhoto.cgImage {
            
            // RequestHandlerを生成
            let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
            // 解析処理を実行
            // Requestが複数ある場合は引数に追加
            try? handler.perform([request])
        }
        
        return photo
    }
}

extension VisionHelper: DrawFaceRectangleDelegate {
    
    func drawFaceRectangle(image: UIImage?, observation: VNFaceObservation) -> UIImage? {
        
        guard let originalImage = image else {
            print("no photo ...")
            return nil
        }
        let imageSize = originalImage.size
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0.0)
        
        let context = UIGraphicsGetCurrentContext()
        originalImage.draw(in: CGRect(origin: .zero, size: imageSize))
        
        context?.setLineWidth(2.0)
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.stroke(observation.boundingBox.converted(to: imageSize))
        
        let drawnImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return drawnImage
    }
}
