//
//  Shop.swift
//  Touchdown
//
//  Created by Iwy2th on 6/12/23.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil
}
