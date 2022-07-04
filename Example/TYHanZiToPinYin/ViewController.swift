//
//  ViewController.swift
//  TYHanZiToPinYin
//
//  Created by Andrew on 07/04/2022.
//  Copyright (c) 2022 Andrew. All rights reserved.
//

import UIKit
import TYHanZiToPinYin


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let str = "重庆都是都市长大长城-多音字测试"
        let pinyin = str.transformToPinyinWithoutBlank()
        
        print("pinyin=\(pinyin)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

