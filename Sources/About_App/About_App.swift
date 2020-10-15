//
//  AboutView.swift
//
//  Created by Ferdinand Rios on 10/25/19.
//  Copyright © 2019 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

public struct AboutView: View {
    
    @EnvironmentObject var about : About

    public init() {}
    
    public var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                AboutLogoView()
                AboutInfoView()
                Spacer()
            }
            .padding(.top, 20)
        }
    }
}




struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().environmentObject(About.sampleData)
    }
}
