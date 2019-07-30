//
//  CustomView.swift
//  ABAlertController_Example
//
//  Created by Andreas Bagias on 30/07/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class CustomView: UIView {

    class func instanceFromNib() -> CustomView{
        return UINib(nibName: "CustomView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CustomView
    }
    
    func configureUI(){
        self.frame = CGRect(x: 0, y: 0, width: 270, height: 200)
        
        
        //here to configure UI
        
        
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
