//
//  LaunchScreenView.swift
//  Touchdown
//
//  Created by Iwy2th on 6/8/23.
//

import SwiftUI

struct LaunchScreenView: View {
  // MARK: - PROPERTIES
  @State private var isAnimating: Bool = false
  @State private var isChangeView: Bool = false
  // MARK: - BODY
  var body: some View {
    if isChangeView {
      ContentView()
        .environmentObject(Shop())
    } else {
      VStack {
        HStack {
          Text("Touch".uppercased())
            .font(.title3)
            .fontWeight(.black)
            .opacity(isAnimating ? 0 : 1)
            .offset(x: isAnimating ? -25 : 0 , y: 0)
          Image("logo-dark")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30, alignment: .center)
            .opacity(isAnimating ? 0 : 1)
            .scaleEffect(isAnimating ? 3 : 1)
            .offset(x: 0 , y: isAnimating ? -25 : 0)
            .animation(.easeOut(duration: 2), value: isAnimating)
            .onAppear {
              withAnimation(.easeOut(duration: 1)) {
                isAnimating = true
              }
            }
          Text("Down".uppercased())
            .font(.title3)
            .fontWeight(.black)
            .opacity(isAnimating ? 0 : 1)
            .offset(x: isAnimating ? 25 : 0 , y: 0)
        }
        .onAppear {
          DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isChangeView = true
          }
        }
      }
    }
  }

}


// MARK: - PREVIEW


struct LaunchScreenView_Previews: PreviewProvider {
  static var previews: some View {
    LaunchScreenView()
  }
}
