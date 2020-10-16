//
//  BingoSampleUITests.swift
//  BingoUITests
//
//  Created by Tulio Bazan on 16/10/20.
//  Copyright © 2020 tucobz. All rights reserved.
//

import XCTest

class BingoSampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCheckDrawNumberIsChecked() throws {
        let app = XCUIApplication()

        XCTAssertTrue(app.tabBars.buttons["Sorteio"].isSelected)
        XCTAssertTrue(app.staticTexts["drawedNumberLabel"].firstMatch.label == "Sortei um Número")

        app.staticTexts["Sortear"].tap()

        let selectedNumber = app.staticTexts["drawedNumberLabel"].firstMatch.label

        app.tabBars.buttons["Sorteados"].tap()
        XCTAssertTrue(app.tabBars.buttons["Sorteados"].isSelected)

        scrollUntilFind(staticText: selectedNumber)

        XCTAssertTrue(app.staticTexts[selectedNumber].exists)
    }

    func scrollUntilFind(staticText: String) {
        let app = XCUIApplication()

        while !app.staticTexts[staticText].exists {
            app.collectionViews.firstMatch.swipeUp()
        }
    }

}
