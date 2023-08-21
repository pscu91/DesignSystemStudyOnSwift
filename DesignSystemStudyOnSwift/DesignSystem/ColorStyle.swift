//
//  ColorStyle.swift
//  DesignSystemStudyOnSwift
//
//  Created by SUNGIL-POS on 2023/08/21.
//
// 첼란(@ValseLee)이 작성한 코드를 뜯어보며 스터디했습니다.

import SwiftUI

extension Color {
    // MARK: Hex Init
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex >> 16) & 0xff) / 255
        let green = Double((hex >> 8) & 0xff) / 255
        let blue = Double((hex >> 0) & 0xff) / 255

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }

    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

extension Color {
    // MARK: Black and White
    static var black: Self {
            .init(hex: "#000000")
    }

    static var white: Self {
            .init(hex: "#FFFFFF")
    }
    
    // MARK: Gradients

    static var startColor: Self {
            .init(hex: "#A451F7")
    }

    static var endColor: Self {
            .init(hex: "#533670")
    }

    // MARK: Buttons
    static var primary: Self {
            .init(hex: "#FFEB60")
    }

    static var secondary: Self {
            .init(hex: "#333333")
    }

    // MARK: Texts
    static var text01: Self {
            .init(hex: "#242424")
    }
    static var text02: Self {
            .init(hex: "#555555")
    }
}

// MARK: Preview
struct Color_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Color.black
            Color.white
            
            LinearGradient(
                colors: [
                        .startColor,
                        .endColor
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

            Color.primary
            Color.secondary
            
            Color.text01
            Color.text02
        }
    }
}
