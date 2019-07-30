//
//  ViewController.swift
//  ABAlertController
//
//  Created by andreasbagias on 07/30/2019.
//  Copyright (c) 2019 andreasbagias. All rights reserved.
//

import UIKit
import ABAlertController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(frame: CGRect.zero)
        btn.setTitle("BUTTON", for: UIControlState.normal)
        btn.setTitleColor(UIColor.black, for: UIControlState.normal)
        btn.sizeToFit()
        btn.center = self.view.center
        btn.addTarget(self, action: #selector(showAlert), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    
    @objc func showAlert(){
        
        let customView = CustomView.instanceFromNib()
        customView.configureUI()
        
        ABAlert.show(vc: self, view: customView, positiveButtonName: "Okay", negativeButtonName: "Cancel", OK: {
            
        }) {
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

