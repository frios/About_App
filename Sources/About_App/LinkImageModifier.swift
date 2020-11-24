//
//  LinkImageModifier.swift
//
//  Created by Feldy Rios on 9/28/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI


extension Image {
    
    public func linkImageModifier() -> some View {
        self
            .resizable()
            .renderingMode(.template)
            .frame(width: 30, height: 30)
            .aspectRatio(contentMode: .fit)
    }
}
