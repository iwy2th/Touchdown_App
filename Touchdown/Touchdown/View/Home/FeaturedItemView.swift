//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/9/23.
//

import SwiftUI

struct FeaturedItemView: View {
  // MARK: - PROPERTIES
  let player: Player
  // MARK: - BODY
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}
// MARK: - PREVIEW


struct FeaturedItemView_Previews: PreviewProvider {
  static let player1: [Player] = Bundle.main.decode("player.json")
    static var previews: some View {
      FeaturedItemView(player: player1[1])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
    }
}
