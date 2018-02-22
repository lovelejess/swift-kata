//
//  FizzBuzzFeatures.swift
//  swift-kataTests
//
//  Created by Jessica Le on 2/21/18.
//  Copyright © 2018 lovelejess. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class FizzBuzzFeatures: XCTestCase {
    func testFizzBuzz() {
        Given("I have launched the app")
        And("A number web service that returns 6 in a JSON object")
        When("I click the FizzBuzz button")
        Then("I see Fizz")
    }
}
