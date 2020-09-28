//
//  DepthLayoutContainer.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct DepthLayoutContainer: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Color.orange
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
                    .cornerRadius(16)
                    .shadow(radius: 20)
                    .offset(x: geometry.size.width / 4 - geometry.size.width / 8, y: geometry.size.height / 4 - geometry.size.width / 8)

                Color.orange
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
                    .cornerRadius(16)
                    .shadow(radius: 20)
                    .offset(x: geometry.size.width / 4, y: geometry.size.height / 4)

                Color.orange
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
                    .cornerRadius(16)
                    .shadow(radius: 20)
                    .offset(x: geometry.size.width / 4 + geometry.size.width / 8, y: geometry.size.height / 4 + geometry.size.width / 8)
            }
        }
    }
}

struct DepthLayoutContainer_Previews: PreviewProvider {
    static var previews: some View {
        DepthLayoutContainer()
    }
}
