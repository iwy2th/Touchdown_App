//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/8/23.
//

import SwiftUI

struct NavigationBarView: View {
  // MARK: - PROPERTIES
  @State private var isAnimating: Bool = false
  // MARK: - BODY
  var body: some View {
    HStack {
      Button {
        //
      } label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.black)
      }//: BUTTON
      Spacer()
      LogoView()
        .opacity(isAnimating ? 1 : 0)
        .offset(x: 0, y: isAnimating ? 0 : -25)
        .onAppear {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimating.toggle()
          }
        }
      Spacer()
      Button {
        //
      } label: {
        ZStack {
          Image(systemName: "cart")
            .font(.title)
          .foregroundColor(.black)
          Circle()
            .fill(.red)
            .frame(width: 14, height: 14, alignment: .center)
            .offset(x: 13, y: -10)

        }
      }//: BUTTON

    }//: HSTACK
  }
  // MARK: - PREVIEW
}

struct NavigationBarView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
