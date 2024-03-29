//
//  AboutView.swift
//
//  Created by Ferdinand Rios on 10/25/19.
//  Copyright © 2019 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

public struct AboutView: View {
    
    @Environment(About.self) var about

    public init() {
    }
    
    public var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                AboutLogoView()
                    .environment(about)
                AboutInfoView()
                    .environment(about)
                Spacer()
            }
            .padding(.top, 20)
        }
    }
}


#Preview {
    AboutView()
        .environment(About())
}
