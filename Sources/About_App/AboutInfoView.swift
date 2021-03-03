//
//  InfoView.swift
//
//  Created by Ferdinand Rios on 4/23/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

public struct AboutInfoView : View {
    @EnvironmentObject var about : About
    
    public var body : some View {
        VStack (spacing: 20) {
            Text("\(about.version)")
                .font(.caption)
                .fontWeight(.bold)
            
            VStack() {
                if let copyRight = about.copyRight {
                    Text(copyRight)
                }
                if let reservedRights = about.reservedRights {
                    Text(reservedRights)
                }
                if let misc = about.misc {
                    Text(misc)
                }
            }
            .font(.headline)
            
            VStack() {
                if let createdBy = about.createdBy {
                    Text("Created by:")
                    Text(createdBy)
                }
                if let companyName = about.companyName {
                    Text(companyName)
                }
                if let address1 = about.address1 {
                    Text(address1)
                }
                if let address2 = about.address2 {
                    Text(address2)
                }
                if let city = about.city, let state = about.state, let zip = about.zip {
                    Text("\(city), \(state) \(zip)")
                }
            }
            
            HStack (alignment: .center, spacing: 20){
                if let webURL = about.webURL {
                    Link(destination: URL(string: webURL)!, label: {
                        Image("Home", bundle: Bundle.module)
                            .linkImageModifier()
                    })
                    .hoverWithPaddingModifier()
                }
                if let instagram = about.instagram {
                    Link(destination: URL(string: instagram)!, label: {
                        Image("Instagram", bundle: Bundle.module)
                            .linkImageModifier()
                    })
                    .hoverWithPaddingModifier()
                }
                if let facebook = about.facebook {
                    Link(destination: URL(string: facebook)!, label: {
                        Image("Facebook", bundle: Bundle.module)
                            .linkImageModifier()
                    })
                    .hoverWithPaddingModifier()
                }
                if let twitter = about.twitter {
                    Link(destination: URL(string: twitter)!, label: {
                        Image("Twitter", bundle: Bundle.module)
                            .linkImageModifier()
                    })
                    .hoverWithPaddingModifier()
                }
                if let linkedin = about.linkedin {
                    Link(destination: URL(string: linkedin)!, label: {
                        Image("Linked_In", bundle: Bundle.module)
                            .linkImageModifier()
                    })
                    .hoverWithPaddingModifier()
                }
            }
            .foregroundColor(about.color)
            
            VStack(alignment: .center, spacing: 5) {
                HStack (spacing: 10){
                    if let supportString = about.supportString {
                        Link("Get support", destination: URL(string: supportString)!)
                            .hoverWithPaddingModifier()
                    }

                    if let reviewString = about.reviewString {
                        Link("Write a review", destination: URL(string: reviewString)!)
                            .hoverWithPaddingModifier()
                    }
                }
            }
            .font(.subheadline)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        AboutInfoView()
    }
}
