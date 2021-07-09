//
//  WindowController.swift
//  SwiftNSWindowStyles
//
//  Created by Ankith Madadi on 6/2/21.
//  Copyright © 2021 Ankith Madadi. All rights reserved.
//

import Cocoa
import WebKit

class WindowController: NSWindowController {
  
  override func windowDidLoad() {
    super.windowDidLoad()
    
    
    // Uncomment this line for titlebar removed
//    window?.styleMask.remove(.titled)
    
    window?.isOpaque = true
    
    // CalibratedWhite: 1, alpha: 0 makes transparent window
    window?.backgroundColor = NSColor.clear
    //window?.backgroundColor = NSColor.init(calibratedWhite: 1, alpha: 0)
  }
}
