//
//  About.swift
//  PoshBoard
//
//  Created by Ferdinand Rios on 11/20/19.
//  Copyright © 2019 SAPIEN Technologies, Inc. All rights reserved.
//

import Foundation
import SwiftUI

public class About : ObservableObject {
    @Published var isPortrait : Bool = true
    
    let appName = "PoshBoard"
    let createdBy = "Ferdinand G. Rios"
    let copyRight = "© 2020, SAPIEN Technologies, Inc."
    let reservedRights = "All Rights Reserved"
    let companyName = "SAPIEN Technologies, Inc."
    let address1 = "831 Latour Court"
    let address2 = "Suite B3"
    let city = "Napa"
    let state = "CA"
    let zip = "94558"
    let webURL = "https://www.sapien.com"
    let twitter = "https://twitter.com/SAPIENTech"
    let facebook = "https://www.facebook.com/SAPIENTech"
    let linkedIn = "https://www.linkedin.com/company/122015/"
    let instagram = ""
    let version = "Version: \(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String).\(Bundle.main.infoDictionary?["CFBundleVersion"] as! String)"
    let logo = "app_logo"
    let supportString = "https://www.sapien.com/forums/viewforum.php?f=17&sid=6d704b7407c3e241400b9a2b805e4978"
    let reviewString = "itms-apps://itunes.apple.com/app/id\(appID)?action=write-review&mt=8"
    let color = Color(UIColor(named: "app_color")!)
    
    public init () {
        self.isPortrait =  UIDevice.current.orientation.isPortrait
        NotificationCenter.default.addObserver(self, selector: #selector(self.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc public func rotated() {
        switch UIDevice.current.orientation {
        case .faceDown, .faceUp, .portrait, .portraitUpsideDown, .unknown:
            self.isPortrait = true
        default:
            self.isPortrait = false
        }
    }
}
