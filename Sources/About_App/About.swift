//
//  About.swift
//
//  Created by Ferdinand Rios on 11/20/19.
//  Copyright © 2019 SAPIEN Technologies, Inc. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit


public class About : ObservableObject {

    @Published var isPortrait : Bool = true
    
    public var appName: String?
    public var createdBy: String?
    public var copyRight: String?
    public var reservedRights: String?
    public var misc: String?
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
    
#if os(iOS)
    let color = Color(UIColor(named: "AccentColor")!)
#elseif os(macOS)
    let color = Color(NSColor(named: "AccentColor")!)
#endif
    let version = "Version: \(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String).\(Bundle.main.infoDictionary?["CFBundleVersion"] as! String)"
    var logo: UIImage = Bundle.main.appIcon

    
    public init () {
#if os(iOS)
        self.isPortrait =  UIDevice.current.orientation.isPortrait
        NotificationCenter.default.addObserver(self, selector: #selector(self.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
#endif
    }
    
#if os(iOS)
    @objc public func rotated() {
        switch UIDevice.current.orientation {
        case .faceDown, .faceUp, .portrait, .portraitUpsideDown, .unknown:
            self.isPortrait = true
        default:
            self.isPortrait = false
        }
    }
#endif
}


extension Bundle {
    public var appIcon: UIImage {
        if let logoImage = UIImage(named:"AppLogo", in: Bundle.main, compatibleWith: nil) {
            return logoImage
        } else {
            return UIImage(named: "DefaultIcon", in: Bundle.module, with: nil)!
        }
//        if let appIcons = infoDictionary?["CFBundleIcons"] as? [String: Any],
//           let primaryAppIcon = appIcons["CFBundlePrimaryIcon"] as? [String: Any],
//           let appIconFiles = primaryAppIcon["CFBundleIconFiles"] as? [String],
//           let lastAppIcon = appIconFiles.last {
//            if let iconImage = UIImage(named:lastAppIcon, in: Bundle.main, compatibleWith: nil) {
//                return iconImage
//            } else {
//                return UIImage(named: "AppIcon76x76@2x~ipad.png", in: Bundle.main, with: nil)!
//            }
//        }
//        return UIImage(named: "DefaultIcon", in: Bundle.module, with: nil)!
    }
}
