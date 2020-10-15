//
//  InfoView.swift
//  PoshBoard
//
//  Created by Ferdinand Rios on 4/23/20.
//  Copyright © 2020 SAPIEN Technologies, Inc. All rights reserved.
//

import SwiftUI

struct AboutInfoView : View {
    @EnvironmentObject var about : About
    
    var body : some View {
        VStack (spacing: 20) {
            Text("Version: \(about.version)")
                .font(.caption)
                .fontWeight(.bold)
            
            VStack() {
                Text(about.copyRight)
                Text(about.reservedRights)
            }
            .font(.headline)
            
            VStack() {
                Text("Created by:")
                Text(about.createdBy)
                Text(about.companyName)
                Text(about.address1)
                Text(about.address2)
                Text("\(about.city), \(about.state) \(about.zip)")
            }
            
            HStack (spacing: 20){
                Link(destination: URL(string: about.webURL)!, label: {
                    Image("Home")
                        .linkImageModifier()
                })
                Link(destination: URL(string: about.twitter)!, label: {
                    Image("Twitter")
                        .linkImageModifier()
                })
                Link(destination: URL(string: about.facebook)!, label: {
                    Image("Facebook")
                        .linkImageModifier()
                })
                Link(destination: URL(string: about.linkedIn)!, label: {
                    Image("LinkedIn")
                        .linkImageModifier()
                })
            }
            .foregroundColor(about.color)
            
            VStack(spacing: 5) {
                HStack (spacing: 10){
                    Link("Get support", destination: URL(string: about.supportString)!)
                        .hoverWithPaddingModifier()

                    Text("-")
                    
                    Link("Write a review", destination: URL(string: about.reviewString)!)
                        .hoverWithPaddingModifier()
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
