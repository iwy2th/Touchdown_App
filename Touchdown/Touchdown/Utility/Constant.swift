//
//  Constant.swift
//  Touchdown
//
//  Created by Iwy2th on 6/8/23.
//

import SwiftUI

//DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
//COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(.systemGray4)
//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//API


//IMAGE

//FONT

//STRING
//MISC
