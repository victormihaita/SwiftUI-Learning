//
//  ViewsAndModifiers.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct ViewsAndModifiers: View {

    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                Text("Views & Modifiers")
                    .font(.largeTitle)

                Text("Concepts")
                    .foregroundColor(Color.gray)

                Text("Building a UI with SwiftUI consists of using Views and Modifiers. Traditional methods used controlls and properties. With SwiftUI, you add a view and then set properties with modifiers.")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.orange)

                Button(action: {}, label: {
                    Text("Button With Shodow")
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .cornerRadius(16)
                        .shadow(radius: 8, y: 8)

                })
            }.font(.title)
        }
    }
}

struct ViewsAndModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndModifiers()
    }
}
