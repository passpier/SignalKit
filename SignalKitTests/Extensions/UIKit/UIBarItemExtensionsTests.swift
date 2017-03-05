//
//  UIBarItemExtensionsTests.swift
//  SignalKit
//
//  Created by Yanko Dimitrov on 3/6/16.
//  Copyright © 2016 Yanko Dimitrov. All rights reserved.
//

import XCTest
@testable import SignalKit

class UIBarItemExtensionsTests: XCTestCase {
    
    var barItem: UIBarItem!
    var bag: DisposableBag!
    
    override func setUp() {
        super.setUp()
        
        barItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
        bag = DisposableBag()
    }
    
    func testBindToEnabled() {
        
        let signal = Signal<Bool>()
        
        signal.bindTo(enabledStateIn: barItem).disposeWith(bag)
        
        signal.send(false)
        
        XCTAssertFalse(barItem.isEnabled, "Should bind a signal of boolean to the enabled property of UIBarItem")
    }
}
