//
//  CGRect+ConvertFromSize.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import Foundation
import UIKit

extension CGRect {
    func converted(to size: CGSize) -> CGRect {
        
        return CGRect(x: self.minX * size.width,
                      y: (1 - self.maxY) * size.height,
                      width: self.width * size.width,
                      height: self.height * size.height)
    }
}
