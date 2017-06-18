//
//  LBRY.swift
//  LBRYKit
//
//  Created by sleepdeficit.
//  Copyright © 2017 ☠️👽🤖👻. All rights reserved.
//

import Foundation

public enum LBRY {
    
    
    public enum Paths {
        
        static public let bundleResourcePath = Bundle(identifier: "io.darg.LBRYKit")!.resourcePath
        static public let lbrySourcePath = bundleResourcePath! + "/source/lbry"
        static public let lbryBinPath = lbrySourcePath + "/lbry-venv/bin/"
        static public let pythonPath  = lbryBinPath + "python2.7"

    }
    
    
    public enum Files {
        
        static public let lbrynetCli = Paths.lbrySourcePath + "/lbry-venv/bin/lbrynet-cli"
        static public let daemon = Paths.lbrySourcePath + "/lbry-venv/bin/lbrynet-daemon"
        
    }

    
    public enum Daemon {
        
        static public func startDaemon() { Shell.command(Files.daemon, ["--verbose"]) }
        
        static public func stopDaemon() { Shell.command(Files.lbrynetCli, ["daemon_stop"]) }
        
        static public func checkDaemon() { Shell.command(Files.lbrynetCli, ["status"]) }
        
    }
    

}
