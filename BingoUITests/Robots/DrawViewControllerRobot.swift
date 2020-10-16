//
//  DrawViewControllerRobot.swift
//  BingoUITests
//
//  Created by Tulio Bazan on 16/10/20.
//  Copyright © 2020 tucobz. All rights reserved.
//

import XCTest
import UIBot

class DrawViewControllerRobot: Bot {

    enum accessibilityIdentifiers : String {
        case drawedNumberLabel
        case drawButton
        case drawedTabLabel = "Sorteados"
    }

    override func trait() -> XCUIElement? {
        return app.staticTexts[accessibilityIdentifiers.drawedNumberLabel.rawValue].firstMatch
    }

    var lastDrawedNumber: String = ""

    @discardableResult
    func drawNumber() -> Self {
        tapButton(id: accessibilityIdentifiers.drawButton.rawValue)
        lastDrawedNumber = app.staticTexts[accessibilityIdentifiers.drawedNumberLabel.rawValue].label
        return self
    }


    @discardableResult
    func openDrawedControl() -> Self {
        return tapLabel(text: accessibilityIdentifiers.drawedTabLabel.rawValue)
    }
}
