//
//  AboutLogoView.swift
//
//  Created by Ferdinand Rios on 4/23/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

public struct AboutLogoView : View {
    @Environment(About.self) var about
    
    public var body : some View {
        if let appName = about.appName {
        Text(appName)
            .font(.largeTitle)
        }
        Image(uiImage: about.logo)
            .resizable()
            .frame(width: 200.0, height: 200.0)
            .cornerRadius(20)
            .padding()
    }
}

#Preview {
    AboutLogoView().environment(About())
}
