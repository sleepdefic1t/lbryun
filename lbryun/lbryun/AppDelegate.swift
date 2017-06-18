//
//  AppDelegate.swift
//  lbryun
//
//  Created by sleepdeficit.
//  Copyright © 2017 ☠️👽🤖👻. All rights reserved.
//

import Cocoa
import LBRYKit

class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItemController = StatusItemController.shared

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
        LBRY.Daemon.stopDaemon()
        
    }

}
