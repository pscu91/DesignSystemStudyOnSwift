//
//  TextFieldStyle.swift
//  DesignSystemStudyOnSwift
//
//  Created by SUNGIL-POS on 2023/08/22.
//
// 첼란(@ValseLee)이 작성한 코드를 뜯어보며 스터디했습니다.

import SwiftUI

struct DSTextField: View {
    enum DSTextFieldStyle {
        case TextField
        case messageTextField
    }
    
    let style: DSTextFieldStyle
    
    @Binding var content: String
    @State var placeholder: String = "여기에 입력..."
//    @State var isMessageTextField: Bool = false
    var maxLength: Int
    
    var body: some View {
        switch style {
        case .TextField:
            VStack {
                TextField(text: $content) {
                    Text(placeholder)
                }
                .onChange(of: content) {
                     newValue in
                    /// 글자 수가 maxLength를 초과하면 제한합니다.
                    /// prefix는  maxLength까지의 글자까지만 보여줍니다.
                    if content.count > maxLength {
                        content = String(content.prefix(maxLength))
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 8)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
                Rectangle()
                    .frame(height: 0.5, alignment: .bottom)
                    .foregroundColor(Color.secondary)
            }
            
        case .messageTextField:
            VStack(alignment: .trailing) {
                TextField(text: $content) {
                    Text(placeholder)
                }
                .onChange(of: content) {
                     newValue in
                    /// 글자 수가 maxLength를 초과하면 제한합니다.
                    /// prefix는  maxLength까지의 글자까지만 보여줍니다.
                    if content.count > maxLength {
                        content = String(content.prefix(maxLength))
                    }
                }
//                .font(.dosIyagiBold(.body))
                .padding(32)
                /// 클리어 버튼과 text 입력 영역이 겹치지 않도록 추가 패딩값을 줬습니다.
                .padding(.trailing, 18)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
                .foregroundColor(.text01)
                .background() {
                    Capsule()
                        .fill(Color.secondary)
                        .shadow(color: .primary.opacity(0.1), radius: 5, y: 5)
                }
                /// 클리어 버튼을 추가했습니다.
                .overlay {
                    if !content.isEmpty {
                        Button(action: {
                            content = ""
                        }) {
                            Image(systemName: "xmark")
                                .foregroundColor(Color.secondary)
                                .frame(width: 22, height: 22)
                        }
                        .position(x: 288, y: 27)
                    }
                }
                .padding(8)
                
                    /// 입력된 글자 수를 count하는 텍스트를 추가했습니다.
                    Text("\(content.count)/\(maxLength)")
                        .foregroundColor(content.count > maxLength ? . primary : .secondary)
//                        .font(.dosIyagiBold(.callout))
                        .padding(.trailing, 32)
            }
        }
    }
}
