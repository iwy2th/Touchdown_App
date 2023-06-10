//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/10/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
  var body: some View {
    HStack {
      Button {
        //
      } label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      }
      Spacer()
      Button {
        //
      } label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      }

    }//: HSTACK
  }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
