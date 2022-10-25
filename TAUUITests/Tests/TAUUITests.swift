//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Tony Chen on 11/7/2022.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: BaseTest {

    func testAllElementsOnMainScreen() throws {
        // UI tests must launch the application that they test.

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.staticTexts["welcomeMessage"].tap()
        //app.staticTexts["enterCity"].tap()
        app.staticTexts["Enroll"].tap()
        app.staticTexts["Please Enter City"].tap()
        app.images["TAUlogo"].tap()
        app.textFields["city"].tap()
        XCTAssertTrue(app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists
    }
    
    func testThankYouMessage(){
        app.textFields["city"].tap()
        //app.textFields["city"].typeText("test")
        app.buttons["enrollButton"].tap()
        //XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)test
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 14.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
