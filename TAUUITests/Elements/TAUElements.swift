//
//  TAUElements.swift
//  TAUUITests
//
//  Created by Tony Chen on 16/7/2022.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest


enum TAUScreen: String {
    case welcomeMessage = "welcomeMessage"
    case tauLogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case entrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"
    
    var element: XCUIElement {
        
        switch self {
            case .welcomeMessage, .enterCityLabel, .thankYouMessage, .errorMessage:
                return XCUIApplication().staticTexts[self.rawValue]
            case .cityTextField:
                return XCUIApplication().textFields[self.rawValue]
            case .entrollButton:
                return XCUIApplication().buttons[self.rawValue]
            case .tauLogo:
            if UIDevice.current.userInterfaceIdiom == .pad {
                return XCUIApplication().images["iPad"]
            } else {
                return XCUIApplication().images[self.rawValue]
        }
    }
    
  }
}
