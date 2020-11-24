//
//  About.swift
//
//  Created by Ferdinand Rios on 11/20/19.
//  Copyright © 2019 SAPIEN Technologies, Inc. All rights reserved.
//

import Foundation
import SwiftUI


public class About : ObservableObject {

    @Published var isPortrait : Bool = true
    
    public var appName: String?
    public var createdBy: String?
    public var copyRight: String?
    public var reservedRights: String?
    public var companyName: String?
    public var address1: String?
    public var address2: String?
    public var city: String?
    public var state: String?
    public var zip: String?
    public var webURL: String?
    public var twitter: String?
    public var facebook: String?
    public var linkedin: String?
    public var instagram: String?
    public var supportString: String?
    public var reviewString: String?
    
    let color = Color(UIColor(named: "app_color")!)
    let version = "Version: \(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String).\(Bundle.main.infoDictionary?["CFBundleVersion"] as! String)"
    let logo = "app_logo"

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
