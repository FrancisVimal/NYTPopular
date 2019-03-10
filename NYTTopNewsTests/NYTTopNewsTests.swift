//
//  NYTTopNewsTests.swift
//  NYTTopNewsTests
//
//  Created by francisvimal on 09/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//

import XCTest
@testable import NYTTopNews

class NYTTopNewsTests: XCTestCase {
    
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testdataLoadToTable()
    {
    let viewController = ViewController()
    XCTAssertNotNil(viewController.popularNews.getPopular())
    }
    


}
