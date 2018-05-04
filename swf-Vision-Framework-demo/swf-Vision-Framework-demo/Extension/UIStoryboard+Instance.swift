//
//  UIStoryboard+Instance.swift
//  swf-Vision-Framework-demo
//
//  Created by S.Emoto on 2018/05/04.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    
    /// Storyboardからインスタンスを取得する
    class func viewController<T: UIViewController>(storyboardName: String,
                                                   identifier: String) -> T? {
        
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(
            withIdentifier: identifier) as? T
    }
}
