//
//  Shell.swift
//  LBRYKit
//
//  Created by simon on 6/18/17.
//  Copyright © 2017 ☠️👽🤖👻. All rights reserved.
//

import AppKit

public enum Shell {
    
    static public func command(_ launchPath: String, _ arguments: [String]) {
        
        DispatchQueue.global().async(group: nil,
                                     qos: DispatchQoS.background,
                                     flags: DispatchWorkItemFlags.assignCurrentContext,
                                     execute: {
                                        
            Process.launchedProcess(launchPath: launchPath, arguments: arguments)
                                        
        })
        
    }
    
}
