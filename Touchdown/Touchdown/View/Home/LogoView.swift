//
//  LogoView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/8/23.
//

import SwiftUI

struct LogoView: View {
  // MARK: - PROPERTIES

  // MARK: - BODY
  var body: some View {
    HStack {
      Text("Touch".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundColor(.black)
      Image("logo-dark")
        .resizable()
        .scaledToFit()
        .frame(width: 30, height: 30, alignment: .center)
      Text("DOWN".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundColor(.black)
  }//: HSTACK
}
// MARK: - PREVIEW
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
