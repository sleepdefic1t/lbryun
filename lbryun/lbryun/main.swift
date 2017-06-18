//
//  main.swift
//  lbryun
//
//  Created by sleepdeficit.
//  Copyright © 2017 ☠️👽🤖👻. All rights reserved.
//

import Cocoa

func main() {
    
    let app = NSApplication.shared(),
        delegate = AppDelegate() as NSApplicationDelegate
        app.delegate = delegate
        app.run()
    
}

main()
