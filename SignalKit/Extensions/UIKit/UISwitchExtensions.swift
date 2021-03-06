//
//  UISwitchExtensions.swift
//  SignalKit
//
//  Created by Yanko Dimitrov on 3/6/16.
//  Copyright © 2016 Yanko Dimitrov. All rights reserved.
//

import UIKit

public extension SignalEventType where Sender: UISwitch {
    
    /// Observe UISwitch state changes
    
    public var onState: Signal<Bool> {
        
        return events(.ValueChanged).map { $0.on }
    }
}
