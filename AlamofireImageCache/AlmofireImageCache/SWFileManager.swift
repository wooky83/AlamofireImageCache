//
//  SWFileManager.swift
//  AlamofireImageCache
//
//  Created by wooky83 on 2017. 10. 31..
//  Copyright © 2017년 wooky83. All rights reserved.
//

import Foundation

class SWFileManager : NSObject {
    
    static func readImageCache(imageName: String) -> Data? {
        let imgName = imageName.replacingOccurrences(of: "/", with: "#")
        guard let writePath = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(imgName) else {return nil}
        guard let sceneData = try? Data(contentsOf: writePath) else {return nil}
        return sceneData
    }
    
    static func writeImageCache(imageName: String?, image: Data?){
        guard let saveImage = image, let imageName = imageName else {return}
        let imgName = imageName.replacingOccurrences(of: "/", with: "#")
        guard let writePath = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(imgName) else {return}
        do {
            try saveImage.write(to: writePath)
        }
        catch {
            print(error.localizedDescription)
        }
    }
}
