//
//  AboutLogoView.swift
//  PoshBoard
//
//  Created by Ferdinand Rios on 4/23/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

struct AboutLogoView : View {
    @EnvironmentObject var about : About
    
    var body : some View {
        Text(about.appName)
            .font(.largeTitle)
        Image(about.logo)
            .resizable()
            .frame(width: 200.0, height: 200.0)
            .cornerRadius(20)
            .padding()
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        AboutLogoView()
    }
}
