//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/9/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
      TabView {
        ForEach(players) { item in
          FeaturedItemView(player: item)
            .padding(.top, 10)
            .padding(.horizontal, 15)
        }
      }//: TABVIEW
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
        .previewLayout(.sizeThatFits)
        .background(Color.gray)
    }
}
