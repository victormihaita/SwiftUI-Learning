//
//  Shapes.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                DescriptionView(
                    title: "Shapes",
                    subtitle: "Short Introduction",
                    description: "With SwiftUI views, you can add layers on top (.overlay) and behind (.background) the view.")

                Text("This text has a rounded rectangle behind it")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.blue))
                    .padding()

                Text("But sometimes you can use color + corner radius:")

                Text("This text has a color and corner radius")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding()

            }.font(.body)
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
