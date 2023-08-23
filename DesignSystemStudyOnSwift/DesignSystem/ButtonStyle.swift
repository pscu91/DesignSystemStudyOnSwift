//
//  ButtonStyle.swift
//  DesignSystemStudyOnSwift
//
//  Created by SUNGIL-POS on 2023/08/21.
//
// 첼란(@ValseLee)이 작성한 코드를 뜯어보며 스터디했습니다.

// 외부에서 전달된 '구체적인 정보들(라벨과 액션)'을 받아서 '레이아웃'으로 정리하고, 다시 외부로 전달할 수 있도록 코드를 구현합니다.


import SwiftUI

public struct DSButton {

    /*
    ButtonStyle 열거형으로 버튼의 종류를 나누고
    버튼의 기능에 따라 필요한 속성을 연관값으로 전달합니다.
    이로써 작업자들은 특정 케이스의 뷰가 어떤 기능을 수행하는지,
    어떤 속성이 필요한지 플레이스홀더로 확인할 수 있습니다.
    */
    
    public enum DSButtonStyle {
        case primary(isDisabled: Bool)
        case secondary(isDisabled: Bool)
//        case tag(isEditing: Bool,
//                 isSelected: Bool = false)
//        case plainText(isDestructive: Bool)
//        case homeTab(tabName: String,
//                     tabSelection: Binding<String>)
    }

    struct CustomButtonView<CustomLabelType: View>: View {
        public let style: DSButtonStyle
        public let action: () -> Void

        // any View 프로토콜 타입으로 선언할 수 없던 문제를 제너릭으로 해결합니다.
        public var label: CustomLabelType?

        var body: some View {
            switch style {
            case .primary(let isDisabled):
                label
                    .frame(maxHeight: 112)
                    .padding(.horizontal, 32)
                    .font(.SHSNRegular(.Body02))
                    .foregroundColor(.text01)
                    .background { Color.primary }
                    .opacity(isDisabled ? 0.3 : 1.0)

            case .secondary(let isDisabled):
                label
                    .frame(maxHeight: 112)
                    .padding(.horizontal, 32)
                    .font(.SHSNRegular(.Body02))
                    .foregroundColor(.uiBackground)
                    .background { Color.secondary }
                    .opacity(isDisabled ? 0.3 : 1.0)
            }
        }

        // 생성자를 하나로 통일하고 열거형의 연관값으로 세부 내용을 전달합니다.
        init(style: DSButtonStyle,
            action: @escaping () -> Void,
            @ViewBuilder label: () -> CustomLabelType) {
            self.style = style
            self.action = action
            self.label = label()
        }
    }
}
