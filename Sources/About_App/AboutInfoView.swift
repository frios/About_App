//
//  InfoView.swift
//  PoshBoard
//
//  Created by Ferdinand Rios on 4/23/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

public struct AboutInfoView : View {
    @EnvironmentObject var about : About
    
    public var body : some View {
        VStack (spacing: 20) {
            Text("Version: \(about.version)")
                .font(.caption)
                .fontWeight(.bold)
            
            VStack() {
                if let copyRight = about.copyRight {
                    Text(copyRight)
                }
                if let reservedRights = about.reservedRights {
                    Text(reservedRights)
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
            
            HStack (spacing: 20){
                if let webURL = about.webURL {
                    Link(destination: URL(string: webURL)!, label: {
                        Image("Home")
                            .linkImageModifier()
                    })
                }
                if let twitter = about.twitter {
                    Link(destination: URL(string: twitter)!, label: {
                        Image("Twitter")
                            .linkImageModifier()
                    })
                }
                if let facebook = about.facebook {
                    Link(destination: URL(string: facebook)!, label: {
                        Image("Facebook")
                            .linkImageModifier()
                    })
                }
                if let linkedIn = about.linkedIn {
                    Link(destination: URL(string: linkedIn)!, label: {
                        Image("LinkedIn")
                            .linkImageModifier()
                    })
                }
            }
            .foregroundColor(about.color)
            
            VStack(spacing: 5) {
                HStack (spacing: 10){
                    if let supportString = about.supportString {
                        Link("Get support", destination: URL(string: supportString)!)
                            .hoverWithPaddingModifier()
                    }

                    Text("  ")

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
