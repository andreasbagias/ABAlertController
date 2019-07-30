//
//  ABAlert.swift
//  ABAlertController
//
//  Created by Andreas Bagias on 30/07/2019.
//

import UIKit

public class ABAlert: NSObject {

    public static func show(vc: UIViewController, view: UIView, buttonName: String, OK: @escaping (() -> Void)){
        
        let alertController = createAlertController(withView: view)
        alertController.addAction(UIAlertAction(title: buttonName, style: UIAlertAction.Style.default, handler: { (_) in OK() }))
        alertController.view.addSubview(createContainerView(withView: view))
        vc.present(alertController, animated: true, completion: nil)
        
    }
    
    public static func show(vc: UIViewController, view: UIView, positiveButtonName: String, negativeButtonName: String, OK: @escaping (() -> Void), CANCEL: @escaping (() -> Void)){
        
        let alertController = createAlertController(withView: view)
        alertController.addAction(UIAlertAction(title: positiveButtonName, style: UIAlertAction.Style.default, handler: { (_) in OK() }))
        alertController.addAction(UIAlertAction(title: negativeButtonName, style: UIAlertAction.Style.cancel, handler: { (_) in CANCEL() }))
        alertController.view.addSubview(createContainerView(withView: view))
        vc.present(alertController, animated: true, completion: nil)
        
    }
    
    private static func createAlertController(withView view: UIView) -> ABAlertView{
        var message = ""
        for _ in 0...(Int(view.bounds.size.height/20) + Int(view.bounds.size.height/100)){
            message += "\n"
        }
        
        let alertView = ABAlertView(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
        return alertView
    }
    
    private static func createContainerView(withView view: UIView) -> UIView{
        
        let containerView = UIView()
        containerView.backgroundColor = UIColor.green
        containerView.clipsToBounds = true
        
        let width = view.bounds.size.width
        if width < 270{
            
            let padding = (270 - width)/2
            
            containerView.frame.origin = CGPoint(x: padding, y: 20)
            containerView.frame.size = view.frame.size
            
        }else{
            
            view.frame.size = CGSize(width: 270, height: view.bounds.size.height)
            
            containerView.frame.origin = CGPoint(x: 0, y: 20)
            containerView.frame.size = CGSize(width: 270, height: view.bounds.size.height)
        }
        
        containerView.addSubview(view)
        
        return containerView
    }
    
}
