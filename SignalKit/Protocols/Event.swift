//
//  Event.swift
//  SignalKit
//
//  Created by Yanko Dimitrov on 3/5/16.
//  Copyright © 2016 Yanko Dimitrov. All rights reserved.
//

import Foundation

public protocol Event {
    
    associatedtype Sender
    
    var sender: Sender {get}
}
