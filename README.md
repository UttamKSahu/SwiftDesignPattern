# SwiftDesignPattern

Swift Factory Design Pattern

This code is to demonstrate creating multiple UIButton by using Abstract factory pattern .
1. Create the object of ButtonDetail
ButtonDetail accept three parameters
	1. Button Title
	2. Button Type .  Ex - White , green etc (Button type has been defined as ENUM in ButtonDetail struct )
	3. Button frame

2. ButtonFactory struct has static “getButton” function which accept “ButtonDetail” object and return respective button object 
3. Call the “createButton” function from button object


Example:


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

