//
//  FizzBuzzSteps.swift
//  swift-kataTests
//
//  Created by Jessica Le on 2/21/18.
//  Copyright © 2018 lovelejess. All rights reserved.
//

import XCTest_Gherkin
import XCTest
import Alamofire

class FizzBuzzSteps: StepDefiner {
    override func defineSteps() {
        step("I have launched the app") {
            XCUIApplication().launch()
        }

        step("A number web service that returns 6 in a JSON object") {
            var numberedResponse = -1;
            Alamofire.request("http://localhost:5001/").responseJSON { response in
                if let result = response.result.value {
                    if let json = result as? [String : String] {
                        if let jsonResult = json["result"] {
                            numberedResponse = Int(jsonResult)!
                        }
                    }
                }
            }
            XCTAssertEqual(numberedResponse, 6)
        }

        step("I click the FizzBuzz button") {
            let fizzBuzzButton = "fizzBuzzButton"
             XCUIApplication().buttons[fizzBuzzButton].tap()
        }

        step("I see Fizz") {
            let expectedValue = "Fizz"
            let actualValue = XCUIApplication().staticTexts[expectedValue]
            
            XCTAssertTrue(actualValue.exists)
        }
    }
}
