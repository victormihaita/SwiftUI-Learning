//
//  SFSymbols.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
        VStack(spacing: 16) {
            DescriptionView(
                title: "Images",
                subtitle: "Using SF Symbols",
                description: "You will see I use icons or symbols to add clarity to what I'm demonstrating. This comes from Apple's symbol fon library which you can browse using the app 'SF symbols'")

            Image(systemName: "hand.thumbsup.fill")

            Spacer()
        }
        .font(.largeTitle)
    }
}

struct SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols()
    }
}
