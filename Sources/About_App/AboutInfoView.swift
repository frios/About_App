//
//  InfoView.swift
//
//  Created by Ferdinand Rios on 4/23/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

public struct AboutInfoView : View {
    @Environment(About.self) var about

    public var body : some View {
        VStack (spacing: 20) {
            Text("\(about.version)")
                .font(.caption)
                .fontWeight(.bold)
            
            VStack() {
                if about.copyRight != "" {
                    Text(about.copyRight)
                }
                if about.reservedRights != "" {
                    Text(about.reservedRights)
                }
                if about.misc != "" {
                    Text(about.misc)
                        .multilineTextAlignment(.center)
                }
            }
            .font(.headline)
            
            VStack() {
                if about.createdBy != "" {
                    Text("Created by:")
                    Text(about.createdBy)
                }
                if about.companyName != "" {
                    Text(about.companyName)
                }
                if about.address1 != "" {
                    Text(about.address1)
                }
                if about.address2 != "" {
                    Text(about.address2)
                }
                if about.city != "" || about.state != "" || about.zip != "" {
                    Text("\(about.city), \(about.state) \(about.zip)")
                }
            }
            
            HStack (alignment: .center, spacing: 20){
                if about.webURL != "" {
                    Link(destination: URL(string: about.webURL)!, label: {
                        Image("Home", bundle: Bundle.module)
                            .linkImageModifier()
                    })
#if os(iOS)
                    .hoverWithPaddingModifier()
#endif
                }
                if about.instagram != "" {
                    Link(destination: URL(string: about.instagram)!, label: {
                        Image("Instagram", bundle: Bundle.module)
                            .linkImageModifier()
                    })
#if os(iOS)
                    .hoverWithPaddingModifier()
#endif
                }
                if about.facebook != "" {
                    Link(destination: URL(string: about.facebook)!, label: {
                        Image("Facebook", bundle: Bundle.module)
                            .linkImageModifier()
                    })
#if os(iOS)
                    .hoverWithPaddingModifier()
#endif
                }
                if about.twitter != "" {
                    Link(destination: URL(string: about.twitter)!, label: {
                        Image("Twitter", bundle: Bundle.module)
                            .linkImageModifier()
                    })
#if os(iOS)
                    .hoverWithPaddingModifier()
#endif
                }
                if about.linkedin != "" {
                    Link(destination: URL(string: about.linkedin)!, label: {
                        Image("Linked_In", bundle: Bundle.module)
                            .linkImageModifier()
                    })
#if os(iOS)
                    .hoverWithPaddingModifier()
#endif
                }
            }
            .foregroundColor(about.color)
            
            VStack(alignment: .center, spacing: 5) {
                HStack (spacing: 10){
                    if about.supportString != "" {
                        Link("Get support", destination: URL(string: about.supportString)!)
#if os(iOS)
                    .hoverWithPaddingModifier()
#endif
                    }

                    if about.reviewString != "" {
                        Link("Write a review", destination: URL(string: about.reviewString)!)
#if os(iOS)
                    .hoverWithPaddingModifier()
#endif
                    }
                }
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    AboutInfoView()
        .environment(About())
}
