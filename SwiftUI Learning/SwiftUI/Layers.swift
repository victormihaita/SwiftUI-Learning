//
//  Layers.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct Layers: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                DescriptionView(
                    title: "Layers",
                    subtitle: "The Basics",
                    description: "With SwiftUI views, you can add layers on top (.overlay) and behind (.background) the view.")

                Image("car_image")
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        Text("This is an overlay")
                            .font(.body)
                            .padding(4)
                            .background(Color.white)
                            .cornerRadius(4)
                            .padding(4)
                        .shadow(radius: 16),
                        alignment: .topLeading
                    )

            }.font(.largeTitle)
        }
    }
}

struct Layers_Previews: PreviewProvider {
    static var previews: some View {
        Layers()
    }
}
