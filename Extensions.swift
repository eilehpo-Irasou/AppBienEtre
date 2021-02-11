//
//  Extensions.swift
//  AppBienEtre
//
//  Created by Jesus Bizarro on 06/02/2021.
//

import SwiftUI

extension Color {
    static func rgb(r: Double, g: Double, b: Double) -> Color {
        return Color(red: r / 255, green: g / 255, blue: b / 255)
}
    static let backgroundColor = Color.rgb(r: 21, g: 22, b: 33)
    static let butonColor = Color.rgb(r: 15, g: 175, b: 220)
    static let BienBleu = Color("ColOne")
    static let BienBleu2 = Color("ColorTwo")
    static let CMoyenF = Color("ColorMoyenF")
    static let CMoyenC = Color("ColorMoyenC")
    static let NotHappyC = Color("CNoHapC")
    static let NotHappyF = Color("CnoHapF")
}

