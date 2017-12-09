//
//  MarkovValueTests.swift
//  SwiftMarkov
//
//  Created by Dustin Pfannenstiel on 2/12/17.
//  Copyright © 2017 Dustin Pfannenstiel. All rights reserved.
//

import XCTest
@testable import SwiftMarkov

class MarkovValueTests: XCTestCase {

	let end = MarkovValue.end
	let lowValue = MarkovValue.value(1)
	let highValue = MarkovValue.value(10)
	
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

	func testValues() {
		XCTFail("Test case \"\(#function)\" unset.")
	}
	
}
