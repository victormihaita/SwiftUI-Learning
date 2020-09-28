//
//  PullInView.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct PullInView: View {
    var body: some View {
        VStack(spacing: 16) {
            DescriptionView(
                title: "Layout Behaviour",
                subtitle: "Views that Pull In",
                description: "Some views minimize their frame size so it is only as big as the content within it.")

            Image(systemName: "arrow.down.to.line.alt")

            HStack {
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text views pull in")
                Image(systemName: "arrow.left.to.line.alt")
            }

            Image(systemName: "arrow.up.to.line.alt")

            Spacer()
        }
    }
}

struct PullInView_Previews: PreviewProvider {
    static var previews: some View {
        PullInView()
    }
}
