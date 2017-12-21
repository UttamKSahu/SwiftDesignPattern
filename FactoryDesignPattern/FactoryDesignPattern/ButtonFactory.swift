//
//  ButtonFactory.swift
//  FactoryDesignPattern
//
//  Created by UTTAM on 17/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import UIKit


extension UIButton {
    
    func genericButton(buttonDetail: ButtonDetail) -> UIButton {
        self.setTitle(buttonDetail.buttonTitle, for: .normal)
        self.layer.cornerRadius = buttonDetail.rect.height/2
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        self.frame = buttonDetail.rect
        self.layer.borderWidth = 1.0
        return self
    }
}

/// this protocol help to create object for button with factory design pattern.
protocol ButtonCreatorProtocol {
    func createButton() ->UIButton
}

/// this struct contain the button details
struct ButtonDetail {
    var buttonTitle: String
    var buttonType: Button
    var rect: CGRect
    
    enum Button {
        case whiteRoundedRect
        case blackRoundedRect
        case greenRoundedRect
    }
}

// This structure adopt ButtonCreatorProtocol protocol , So has power to create the button
struct WhiteRoundedRectButton: ButtonCreatorProtocol {
    var buttonDetail: ButtonDetail
    
    init(buttonDetail:ButtonDetail) {
        self.buttonDetail = buttonDetail
    }
    func createButton() -> UIButton {
        let button = UIButton().genericButton(buttonDetail: self.buttonDetail)
        button.backgroundColor = .white
        button.setTitleColor(.darkGray, for: .normal)
        button.layer.borderColor = UIColor.darkGray.cgColor
        return button;
    }
}

// This structure adopt ButtonCreatorProtocol protocol , So has power to create the button
struct BlackRoundedRectButton: ButtonCreatorProtocol {
    var buttonDetail: ButtonDetail
    
    init(buttonDetail:ButtonDetail) {
        self.buttonDetail = buttonDetail
    }
    
    func createButton() -> UIButton {
        let button = UIButton().genericButton(buttonDetail: self.buttonDetail)
        button.backgroundColor = UIColor.black
        button.setTitleColor(.white, for: .normal)
        return button;
    }
}

// This structure adopt ButtonCreatorProtocol protocol , So has power to create the button
struct GreenRoundedRectButton: ButtonCreatorProtocol {
    var buttonDetail: ButtonDetail
    
    init(buttonDetail:ButtonDetail) {
        self.buttonDetail = buttonDetail
    }
    
    func createButton() -> UIButton {
        let button = UIButton().genericButton(buttonDetail: self.buttonDetail)
        button.backgroundColor = UIColor(red: 0.0, green: 160.0/255.0, blue: 106.0/255.0, alpha: 1.0)
        button.setTitleColor(.white, for: .normal)
        button.layer.borderColor = UIColor.clear.cgColor
        return button;
    }
}


struct ButtonFactory {
    
    static func getButton(buttonDetail: ButtonDetail) ->ButtonCreatorProtocol {
        switch buttonDetail.buttonType {
        case .whiteRoundedRect:
            return WhiteRoundedRectButton(buttonDetail: buttonDetail)
        case .blackRoundedRect:
            return BlackRoundedRectButton(buttonDetail: buttonDetail)
        case .greenRoundedRect:
            return GreenRoundedRectButton(buttonDetail: buttonDetail)
        }
        
    }
    
}
