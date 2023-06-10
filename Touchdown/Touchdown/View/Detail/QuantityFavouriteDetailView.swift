//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/10/23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
  // MARK: - PROPERTIES
  @State private var counter: Int = 0
  @State private var isAnimating: Bool = false
  // MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Button {
        if counter > 0 {
          counter -= 1
        }
      } label: {
        Image(systemName: "minus.circle")
      }
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      Button {
        if counter < 100 {
          counter += 1
        }
      } label: {
        Image(systemName: "plus.circle")
      }
      Spacer()
      Button {
        isAnimating.toggle()
      } label: {
        Image(systemName: "heart.circle")
          .foregroundColor(isAnimating ? .pink : .black)
      }

    }//:HSTACK
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large)
  }
}
// MARK: - PREVIEW
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
        .previewLayout(.sizeThatFits)
        .padding()

    }
}
