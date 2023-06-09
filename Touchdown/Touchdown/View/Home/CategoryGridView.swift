//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/9/23.
//

import SwiftUI

struct CategoryGridView: View {
  // MARK: - PROPERTIES

  // MARK: - BODY
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
        Section(
          header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true)) {
          ForEach(categories) { item in
            CategoryItemView(category: item)
          }
        }
      }//: GRID
      .frame(height: 160)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    } //: SCROLL
  }
}
// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
        .previewLayout(.device)
        .padding()
        .background(colorBackground)
    }
}
