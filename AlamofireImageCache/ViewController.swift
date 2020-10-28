//
//  ViewController.swift
//  AlamofireImageCache
//
//  Created by wooky83 on 2017. 10. 31..
//  Copyright © 2017년 wooky83. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onImageClick(_ sender: UIButton) {
        imgView.af.setCacheImage(withURL: URL(string: "https://via.placeholder.com/150/d32776")!)
    }
    
    @IBAction func onBtnImgClick(_ sender: UIButton) {
        btn1.af.setCacheImage(for: .normal, url: URL(string: "https://via.placeholder.com/150/771796")!)
    }

    @IBAction func onBtnBgImgClick(_ sender: UIButton) {
        btn2.af.setBackgroundCacheImage(for: .normal, url: URL(string: "http://imgnews.naver.net/image/009/2013/04/02/20130402_1364861141..jpg_59_20130402090906.jpg")!)
    }
}

