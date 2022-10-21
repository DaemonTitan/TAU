//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Tony Chen on 16/7/2022.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension BaseTest {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "GIVEN App is Ready"){
            _ in
            XCTAssertTrue(TAUScreen.entrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "WHEN I enter \(city)"){
            _ in
            XCTAssertTrue(app.textFields["city"].exists)
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
    }
    
    func whenIEnrolled(){
        XCTContext.runActivity(named: "AND I press enroll button") {
            _ in
            XCTAssertTrue(TAUScreen.entrollButton.element.exists)
            TAUScreen.entrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "THEN I should see thank you message") {
            _ in
            XCTAyncAssert(element: TAUScreen.thankYouMessage.element)
        }
    }
} 

