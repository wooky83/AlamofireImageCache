//
//  SWFileManager.swift
//  AlamofireImageCache
//
//  Created by wooky83 on 2017. 10. 31..
//  Copyright © 2017년 wooky83. All rights reserved.
//

import Foundation

class SWFileManager : NSObject {
    static func readImageCache(imageName: String) -> NSData? {
        let gg = imageName.replacingOccurrences(of: "/", with: "#")
        let writePath = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(gg)
        let sceneData = NSData(contentsOf: writePath!)
        return sceneData
    }
    
    static func writeImageCache(imageName: String, image: NSData) -> Bool {
        let gg = imageName.replacingOccurrences(of: "/", with: "#")
        let writePath = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(gg)
        let result = image.write(to: writePath!, atomically: false)
        return result
    }
}
