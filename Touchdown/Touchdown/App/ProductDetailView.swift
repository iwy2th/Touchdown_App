//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/10/23.
//

import SwiftUI

struct ProductDetailView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      //NAVBAR
      NavigationBarDetailView()
        .padding()
      //HEADER
      HeaderDetailView()
        .padding(.horizontal)
      //DETAIL TOP PART
      TopPartDetailView()
        .padding(.horizontal)
      //DETAIL BOTTOM PART

      //RATINGS + SIZES

      //DESCRIPTION

      //QUANTITY + FAVORITE

      //ADD TO CART
      Spacer()
    }
    .ignoresSafeArea(.all, edges: .all)
    .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.green)).ignoresSafeArea(.all, edges: .all)
  }//:VSTACK
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .previewLayout(.fixed(width: 375, height: 812))
  }
}
