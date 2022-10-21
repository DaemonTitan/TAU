//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Tony Chen on 14/7/2022.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: BaseTest {

    func testThankYouMessage() {
        givenAppIsReady()
        whenIEnter(city:"Melbourne")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}





