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
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                Text("Images")

                Text("Using SF Symbols")
                    .foregroundColor(Color.gray)
                    .font(.title)

                Text("You will see I use icons or symbols to add clarity to what I'm demonstrating. This comes from Apple's symbol fon library which you can browse using the app 'SF symbols'")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.orange)

                Image(systemName: "hand.thumbsup.fill")
            }
            .font(.largeTitle)
        }
    }
}

struct SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols()
    }
}
