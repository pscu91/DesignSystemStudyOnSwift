//
//  ColorStyle.swift
//  DesignSystemStudyOnSwift
//
//  Created by SUNGIL-POS on 2023/08/21.
//
// 첼란(@ValseLee)이 작성한 코드를 뜯어보며 스터디했습니다.
// 밀리의 서재 디자인 라이브러리 2.0(millie Design Library 2.0)을 토대로 작업하였습니다.

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

// 컬러 토큰에 따라 정의
extension Color {

    // MARK: UI Colors

    /**
     디폴트 배경 색상 $ui-up의 배경 색상
     - parameters:
        - property: $ui-background
     */
    static var uiBackground: Self {
            .init(hex: "#FFFFFF")
    }

    /**
     $ui-background 보다 1단계 차이나는 배경 색상, $ui-up-01의 배경 색상
     - parameters:
        - property: $ui-01
     */
    static var ui01: Self {
            .init(hex: "#FAFAF6")
    }

    /**
     $ui-background 보다 2단계 차이나는 배경 색상, $ui-up-02의 배경 색상
     - parameters:
        - property: $ui-02
     */
    static var ui02: Self {
            .init(hex: "#F7F7F7")
    }

    /**
     $ui-background 보다 3단계 차이나는 배경 색상, $ui-up-03의 배경 색상
     - parameters:
        - property: $ui-03
     */
    static var ui03: Self {
            .init(hex: "#F5F4F3")
    }

    /**
     $ui-background 보다 4단계 차이나는 배경 색상, $ui-up-04의 배경 색상
     - parameters:
        - property: $ui-04
     */
    static var ui04: Self {
            .init(hex: "#F6F4EE")
    }

    /**
     $ui-background 보다 5단계 차이나는 배경 색상
     - parameters:
        - property: $ui-05
     */
    static var ui05: Self {
            .init(hex: "#ECECEC")
    }

    /**
     $ui-background 보다 6단계 차이나는 배경 색상
     - parameters:
        - property: $ui-06
     */
    static var ui06: Self {
            .init(hex: "#DFDFDF")
    }

    /**
     $ui-background 보다 7단계 차이나는 배경 색상
     - parameters:
        - property: $ui-07
     */
    static var ui07: Self {
            .init(hex: "#A7A39A")
    }

    /**
     $ui-background 보다 8단계 차이나는 배경 색상
     - parameters:
        - property: $ui-08
     */
    static var ui08: Self {
            .init(hex: "#555555")
    }

    /**
     $ui-background 보다 9단계 차이나는 배경 색상
     - parameters:
        - property: $ui-09
     */
    static var ui09: Self {
            .init(hex: "#333333")
    }

    /**
     $ui-background 보다 10단계 차이나는 배경 색상
     - parameters:
        - property: $ui-10
     */
    static var ui10: Self {
            .init(hex: "#242424")
    }
    
    /**
     $ui-background 를 배경으로 썼을 때 카드 ui의 배경컬러, $ui-background의 기본 모달 배경 색상
     - parameters:
        - property: $ui-up
     */
    static var uiUp: Self {
            .init(hex: "#FFFFFF")
    }

    /**
     $ui-01을 배경으로 썼을 때 카드 ui의 배경컬러
     - parameters:
        - property: $ui-up-01
     */
    static var uiUp01: Self {
            .init(hex: "#FFFFFF")
    }

    /**
     $ui-02을 배경으로 썼을 때 카드 ui의 배경컬러
     - parameters:
        - property: $ui-up-02
     */
    static var uiUp02: Self {
            .init(hex: "#FFFFFF")
    }

    /**
     $ui-03을 배경으로 썼을 때 카드 ui의 배경컬러
     - parameters:
        - property: $ui-up-03
     */
    static var uiUp03: Self {
            .init(hex: "#FFFFFF")
    }

    /**
     $ui-04을 배경으로 썼을 때 카드 ui의 배경컬러
     - parameters:
        - property: $ui-up-04
     */
    static var uiUp04: Self {
            .init(hex: "#FFFFFF")
    }

    
    // MARK: Buttons Color

    /**
     강조된 UI 요소에 사용하는 메인 색상, primary 버튼 배경 색상
     - parameters:
        - property: $primary
     */
    static var primary: Self {
            .init(hex: "#FFEB60")
    }

    /**
     primary 버튼이 Pressed 상태일 때 색상
     - parameters:
        - property: $primary-press
     */
    static var primaryPress: Self {
            .init(hex: "#FFE04B")
    }

    /**
     강조된 UI 요소에 사용하는 메인 색상, secondary 버튼 배경 색상
     - parameters:
        - property: $secondary
     */
    static var secondary: Self {
            .init(hex: "#333333")
    }

    /**
     scondary 버튼이 Pressed 상태일 때 색상
     - parameters:
        - property: $secondary-press
     */
    static var secondaryPress: Self {
            .init(hex: "#242424")
    }

    /**
     tertiary 버튼 배경 색상
     - parameters:
        - property: $tertiary
     */
    static var tertiary: Self {
            .init(hex: "#FFFFFF")
    }

    /**
     tertiary 버튼 배경 색상
     - parameters:
        - property: $tertiary-press
     */
    static var tertiaryPress: Self {
            .init(hex: "#F7F7F7")
    }

    /**
     danger 버튼 배경 색상
     > 삭제 및 강력한 경고 요소
     - parameters:
        - property: $danger
     */
    static var danger: Self {
            .init(hex: "#DF1D1D")
    }

    /**
     danger 버튼이 pressed  상태일 때 색상
     - parameters:
        - property: $danger-press
     */
    static var dangerPress: Self {
            .init(hex: "#BC1A1A")
    }

    /**
     cancel 버튼 배경 색상
     > 취소, 주의 필요성 낮은 요소
     - parameters:
        - property: $cancel
     */
    static var cancel: Self {
            .init(hex: "#C1C1C1")
    }
    
    /**
     cancel 버튼이 pressed  상태일 때 색상
     - parameters:
        - property: $cancel-press
     */
    static var cancelPress: Self {
            .init(hex: "#A5A5A5")
    }
    
    
    // MARK: Text Colors
    
    /**
     성공, 통과 요소
     - parameters:
        - property: $success
     */
    static var success: Self {
            .init(hex: "#0073CB")
    }
    
    /**
     에러, 가벼운 경고
     - parameters:
        - property: $error
     */
    static var error: Self {
            .init(hex: "#F05C2E")
    }
    
    /**
     텍스트 강조 레벨 1단계
     - parameters:
        - property: $text-01
     */
    static var text01: Self {
            .init(hex: "#242424")
    }
    
    /**
     텍스트 강조 레벨 2단계
     - parameters:
        - property: $text-02
     */
    static var text02: Self {
            .init(hex: "#555555")
    }
    
    
    /**
     텍스트 강조 레벨 3단계
     - parameters:
        - property: $text-03
     */
    static var text03: Self {
            .init(hex: "#6F6F6F")
    }
    
    
    /**
     텍스트 강조 레벨 4단계
     - parameters:
        - property: $text-04
     - Important: 16px 이하에서 접근성 미준수 주의
     */
    static var text04: Self {
            .init(hex: "#8B8B8B")
    }
    
    
    // MARK: Text Field Colors
    
    /**
     text-field가 read only 상태일 때 배경 색상
     - parameters:
        - property: $field-readonly
     */
    static var fieldReadOnly: Self {
            .init(hex: "#ECECEC")
    }
    
    /**
     text-field의 placeholder 텍스트 색상
     - parameters:
        - property: $placeholder
     */
    static var placeholder: Self {
            .init(hex: "#C1C1C1")
    }
    
    
    // MARK: Audio Book Colors
    
    /**
     오디오북 요소 강조가 필요할 때 사용
     - parameters:
        - property: $audio
     */
    static var audio: Self {
            .init(hex: "#A451F7")
    }
    
    
    /**
     내가 만든 오디오북 요소 강조가 필요할 때 사용
     - parameters:
        - property: $myaudio
     */
    static var myAudio: Self {
            .init(hex: "#533670")
    }
    
    
    // MARK: ETC
    
    /**
     챗북 요소 강조가 필요할 때 사용
     - parameters:
        - property: $chatbook
     */
    static var chatBook: Self {
            .init(hex: "#EB683F")
    }
    
    
    /**
     키보드로 요소를 포커싱할때 테두리 색상
     - parameters:
        - property: $focus
     */
    static var focus: Self {
            .init(hex: "#469FE3")
    }
}
