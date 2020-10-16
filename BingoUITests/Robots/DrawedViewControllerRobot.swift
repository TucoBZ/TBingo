//
//  DrawedViewControllerRobot.swift
//  BingoUITests
//
//  Created by Tulio Bazan on 16/10/20.
//  Copyright © 2020 tucobz. All rights reserved.
//

import XCTest
import UIBot

class DrawedViewControllerRobot: Bot {

    override func trait() -> XCUIElement? {
        return app.staticTexts["1"].firstMatch
    }

    @discardableResult
    func scrollUntilFind(number: String) -> Self {
        return scroll(at: 0,
                      untilTextExists: number,
                      direction: .up)
    }
}
