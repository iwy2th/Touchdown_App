//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/9/23.
//

import SwiftUI

struct CategoryItemView: View {
  // MARK: - PROPERTIES
  let category: Category
  // MARK: - BODY
  var body: some View {
    Button {
      //
    } label: {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundColor(.gray)
        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundColor(.gray)
        Spacer()
      }//: HSTACK
      .frame(width: 175, height: 45, alignment: .leading)
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.gray, lineWidth: 1)
      )
    } //: BUTTON
  }
}
// MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
      CategoryItemView(category: categories[12])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
    }
}
