//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/10/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
      Button {
        //
      } label: {
        Spacer()
        Text("Add to cart".uppercased())
          .font(.system(.title2, design: .rounded))
          .foregroundColor(.white)
          .fontWeight(.bold)
        Spacer()
      }//"BUTTON
      .padding(15)
      .background(Color(
        red: sampleProduct.red,
        green: sampleProduct.green,
        blue: sampleProduct.blue))
      .clipShape(Capsule())
      .shadow(radius: 2)
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
