//
//  HoverWithPaddingModifier.swift
//
//  Created by Ferdinand Rios on 5/1/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

public struct HoverWithPaddingModifier: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .padding(6)
//            .background(Color.clear)
            .contentShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
            .hoverEffect(.highlight)
    }
}

extension View {
    func hoverWithPaddingModifier() -> some View {
        self.modifier(HoverWithPaddingModifier())
    }
}
