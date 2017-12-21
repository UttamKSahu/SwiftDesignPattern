//
//  ViewController.swift
//  FactoryDesignPattern
//
//  Created by UTTAM on 17/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        whiteButton()
        
        blackButton()
        greenButton()
        
    }
    
    
    func whiteButton() {
        let whiteButton = ButtonFactory.getButton(buttonDetail: ButtonDetail(buttonTitle: "WHITE", buttonType: .whiteRoundedRect, rect: CGRect(x: 50, y: 100, width: view.frame.size.width - 100 , height: 50))).createButton()
        view.addSubview(whiteButton)
    }
    
    func blackButton() {
        let whiteButton = ButtonFactory.getButton(buttonDetail: ButtonDetail(buttonTitle: "BLACK", buttonType: .blackRoundedRect, rect: CGRect(x: 50, y: 200, width: view.frame.size.width - 100 , height: 50))).createButton()
        view.addSubview(whiteButton)
    }
    
    func greenButton() {
        let whiteButton = ButtonFactory.getButton(buttonDetail: ButtonDetail(buttonTitle: "GREEN", buttonType: .greenRoundedRect, rect: CGRect(x: 50, y: 300, width: view.frame.size.width - 100 , height: 50))).createButton()
        view.addSubview(whiteButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

