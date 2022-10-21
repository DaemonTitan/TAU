//
//  BaseTest.swift
//  TAUUITests
//
//  Created by Tony Chen on 13/7/2022.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BaseTest: XCTestCase {
    var app = XCUIApplication()
    
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
    }
    
    func XCTAyncAssert(element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}

