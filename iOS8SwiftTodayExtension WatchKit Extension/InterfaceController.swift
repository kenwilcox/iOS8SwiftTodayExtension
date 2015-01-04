//
//  InterfaceController.swift
//  iOS8SwiftTodayExtension WatchKit Extension
//
//  Created by Kenneth Wilcox on 1/3/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
  
  @IBOutlet var versionLabel: WKInterfaceLabel!
  @IBOutlet var bigText: WKInterfaceLabel!
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    // Configure interface objects here.
    let os = NSProcessInfo().operatingSystemVersion
    let version = "\(os.majorVersion).\(os.minorVersion).\(os.patchVersion)"
    versionLabel.setText(version)
    
    // Just trying to see how much text you can easily put in a label
    var data = ""
    for i in 1...10 {
      data += "Some line or so \(i), "
    }
    bigText.setText(data)
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
}
