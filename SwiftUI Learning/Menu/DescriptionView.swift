//
//  DescriptionView.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct DescriptionView: View {
    let title: String
    let subtitle: String
    let description: String
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                Text(title)
                    .font(.largeTitle)

                Text(subtitle)
                    .foregroundColor(Color.gray)
                    .font(.title)

                Text(description)
                    .foregroundColor(Color.white)
                    .font(.body)
                    .padding()
                    .background(Color.blue)
            }
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(title: "Views & Modifiers", subtitle: "Concepts", description: "Building a UI with SwiftUI consists of using Views and Modifiers. Traditional methods used controlls and properties. With SwiftUI, you add a view and then set properties with modifiers.")
    }
}

