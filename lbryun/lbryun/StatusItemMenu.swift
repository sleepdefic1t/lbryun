//
//  StatusItemMenu.swift
//  lbryun
//
//  Created by sleepdeficit.
//  Copyright © 2017 ☠️👽🤖👻. All rights reserved.
//

import Cocoa
import LBRYKit

class Menu: NSMenu, NSMenuDelegate {
    
    override init(title: String) {
        super.init(title: title)
        
        delegate = self
        
        
        
        
        let start = NSMenuItem(title: "startDaemon", action: #selector(startDaemon), keyEquivalent: "")
        let check = NSMenuItem(title: "checkDaemon", action: #selector(checkDaemon), keyEquivalent: "")
        let stop = NSMenuItem(title: "stopDaemon", action: #selector(stopDaemon), keyEquivalent: "")
        let website = NSMenuItem(title: "About LBRY", action: #selector(openWeb), keyEquivalent: "")
        let quit = NSMenuItem(title: "Quit", action: #selector(quit(sender:)), keyEquivalent: "q")

        addItem(start)
        addItem(check)
        addItem(stop)
        addItem(website)
        addItem(quit)

        for item in items {
            
            item.isEnabled = true
            item.target = self
            
        }
        
    }
    
    required init(coder decoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    func startDaemon() { LBRY.Daemon.startDaemon() }
    
    func checkDaemon() { LBRY.Daemon.checkDaemon() }
    
    func stopDaemon() { LBRY.Daemon.stopDaemon() }
    
    
    func openWeb() {
        
        if let lbryIO = URL(string: "https://lbry.io/learn") {
            
            print("opening \(lbryIO)")
            NSWorkspace.shared().open(lbryIO)
            
        }
        
    }

    func quit(sender: AnyObject?){ NSApplication.shared().terminate(self) }

}
