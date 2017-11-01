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
    @IBOutlet weak var btn3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btn1.af_setBackgroundImageCache(for: .normal, url: URL(string: "http://pocimg-c.skmcgw.com/upload/feed/feed_20170717145432_40265062.png")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBtnClick(_ sender: AnyObject) {
        btn3.af_setBackgroundImageCache(for: .normal, url: URL(string: "http://pocimg-c.skmcgw.com/upload/feed/feed_20170717145432_40265062.png")!)
    }

}

