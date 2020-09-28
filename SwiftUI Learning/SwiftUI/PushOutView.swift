//
//  PushOutView.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct PushOutView: View {
    var body: some View {
        VStack {
            DescriptionView(
                title: "Layout Behaviour",
                subtitle: "Views that Pull In",
                description: "Some views minimize their frame size so it is only as big as the content within it.")

            Color.purple
                .overlay(Image(systemName: "arrow.up.left").padding(),
                         alignment: .topLeading)

                .overlay(Image(systemName: "arrow.up.right").padding(),
                         alignment: .topTrailing)

                .overlay(Image(systemName: "arrow.down.left").padding(),
                         alignment: .bottomLeading)

                .overlay(Image(systemName: "arrow.down.right").padding(),
                         alignment: .bottomTrailing)

                .overlay(Text("Text views pull in"))
        }
        .font(.title)
        .foregroundColor(.white)
    }
}

struct PushOutView_Previews: PreviewProvider {
    static var previews: some View {
        PushOutView()
    }
}
