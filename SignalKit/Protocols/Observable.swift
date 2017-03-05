//
//  Observable.swift
//  SignalKit
//
//  Created by Yanko Dimitrov on 3/4/16.
//  Copyright © 2016 Yanko Dimitrov. All rights reserved.
//

import Foundation

public protocol Observable: class {
    
    associatedtype Value
    
    @discardableResult func addObserver(_ observer: @escaping (Value) -> Void) -> Disposable
    func send(_ value: Value)
}

// MARK: - SendNext on a given queue

extension Observable {
    
    public func send(_ value: Value, onQueue: SchedulerQueue) {
        
        let scheduler = Scheduler(queue: onQueue)
        
        scheduler.async { [weak self] in
            
            self?.send(value)
        }
    }
}
