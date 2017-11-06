//
//  ViewController.swift
//  ALKitDemo
//
//  Created by WhatsXie on 2017/11/6.
//  Copyright © 2017年 R.S. All rights reserved.
//

import UIKit
import ALKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createALKitView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func createALKitView() {
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = .green
        view.addSubview(box)
        
        let blue = UIView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.backgroundColor = .blue
        box.addSubview(blue)
        
        let red = UIView()
        red.translatesAutoresizingMaskIntoConstraints = false
        red.backgroundColor = .red
        box.addSubview(red)
        
        let yellow = UIView()
        yellow.translatesAutoresizingMaskIntoConstraints = false
        yellow.backgroundColor = .yellow
        box.addSubview(yellow)
    
        box.fill(to: view)
        
        blue.pinTop(to: box, inset: 20)
        blue.fillHorizontal(to: box, insets: 10)
        blue.pinHeight(height: 90)
        
        red.pinBottom(to: box, inset: 10)
        red.fillHorizontal(to: box, insets: 10)
        red.pinHeight(height: 90)
        
        yellow.pinTop(to: red, inset: 10)
        yellow.pinCenterX(to: red)
        yellow.pinSize(width: 50, height: 50)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

