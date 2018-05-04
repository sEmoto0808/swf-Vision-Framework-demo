//
//  NSObject+ClassName.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import Foundation

public extension NSObject {
    
    /// クラス名を取得する
    static var className: String {
        get {
            return String(describing: self)
        }
    }
}
