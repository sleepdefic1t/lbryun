//
//  StatusItemController.swift
//  lbryun
//
//  Created by sleepdeficit.
//  Copyright © 2017 ☠️👽🤖👻. All rights reserved.
//

import Cocoa
import LBRYKit

class StatusItemController: NSObject {
    
    static let shared = StatusItemController()
    
    let item: NSStatusItem = NSStatusBar.system().statusItem(withLength: NSSquareStatusItemLength)
    
    let menu: Menu = Menu(title: "lbryun")
    
    
    fileprivate var image: NSImage?  {
        guard let frame = item.button?.window?.frame else { return nil }
        let lbryLogo = NSImage(named: "AppIcon")
        let logoScaled = CGAffineTransform(scaleX: 0.65, y: 0.775)
        lbryLogo?.size = frame.size.applying(logoScaled)
        
        return  lbryLogo
    }
    
    
    override init() {
        super.init()
        
        if let button = item.button {
            button.image = image
            button.target = self
            button.action = #selector(itemWasClicked(_:))
            button.sendAction(on: [.leftMouseUp, .rightMouseUp])
        }
        
    }
    
    
    func itemWasClicked(_ click: NSClickGestureRecognizer){
        
        guard let clickType = NSApplication.shared().currentEvent?.type else { return }
        
        switch clickType {
            case .leftMouseUp:  print("left-click")
            case .rightMouseUp: item.popUpMenu(menu)
        default: break
        }
        
    }

    
}
