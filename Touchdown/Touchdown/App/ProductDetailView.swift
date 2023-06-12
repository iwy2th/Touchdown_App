//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/10/23.
//

import SwiftUI

struct ProductDetailView: View {
  @EnvironmentObject var shop: Shop
  // MARK: - PROPERTIES
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      //NAVBAR
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication
          .shared
          .connectedScenes
          .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
          .first { $0.isKeyWindow }?.safeAreaInsets.top)
      //HEADER
      HeaderDetailView()
        .padding(.horizontal)
      //DETAIL TOP PART
      TopPartDetailView()
        .zIndex(1)
        .padding(.horizontal)
      //DETAIL BOTTOM PART
      VStack(alignment: .center, spacing: 0) {

        //RATINGS + SIZES
        RatingsSizesDetailView()
          .padding(.top , -20)
          .padding(.bottom, 10)
        //DESCRIPTION
        ScrollView(.vertical, showsIndicators: false) {
          Text(shop.selectedProduct?.description ?? sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        }//SCROLL
        //QUANTITY
        QuantityFavouriteDetailView()
          .padding(.vertical, 10)
        //ADD TO CART
        AddToCartDetailView()
          .padding(.vertical, 20)
        Spacer()
      }//: VSTACK
      .padding(.horizontal)
      .background(
        Color.white
        .clipShape(CustomShape())
        .padding(.top, -105)
      )
    }//: VSTACK
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ??  sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue)).ignoresSafeArea(.all, edges: .all)
  }//:VSTACK
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .environmentObject(Shop())
      .previewLayout(.fixed(width: 375, height: 812))
  }
}
