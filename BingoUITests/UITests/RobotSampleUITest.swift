//
//  RobotSampleUITest.swift
//  BingoUITests
//
//  Created by Tulio Bazan on 16/10/20.
//  Copyright © 2020 tucobz. All rights reserved.
//

import XCTest
import UIBot

class RobotSampleUITest: XCTestCase, Bottable {

    var app: XCUIApplication = XCUIApplication()
    var caseTest: XCTestCase {
        return self
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let drawRobot = DrawViewControllerRobot(test: self)
        drawRobot
            .assert(label: "Sortei um Número")
            .drawNumber()
            .openDrawedControl()

        DrawedViewControllerRobot(test: self)
            .scrollUntilFind(number: drawRobot.lastDrawedNumber)
    }

}
