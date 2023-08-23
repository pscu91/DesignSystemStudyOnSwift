//
//  FontStyle.swift
//  DesignSystemStudyOnSwift
//
//  Created by SUNGIL-POS on 2023/08/23.
//

import SwiftUI

extension Font {
    enum DSFontSize: CGFloat {
        
        /**
         40px / Display 5
         - parameters:
            - property: $display-05
         */
        case Display05 = 40
        
        /**
         36px / Display 4
         - parameters:
            - property: $display-04
         */
        case Display04 = 36
        
        /**
         32px / Display 3
         - parameters:
            - property: $display-03
         */
        case Display03 = 32
        
        /**
         28px / Display 2
         - parameters:
            - property: $display-02
         */
        case Display02 = 28
        
        /**
         24px / Display 1
         - parameters:
            - property: $display-01
         */
        case Display01 = 24
        
        /**
         20px / Headline
         - parameters:
            - property: $headline
         */
        case Headline = 20
        
        /**
         16px / Subhead 3, Subhead-long 3, Body 2, Body-long 2
         - parameters:
            - property: $subhead-03
            - property: $subhead-long-03
            - property: $body-02
            - property: $body-long-02
         */
        case Subhead03,
             SubheadLong03,
             Body02,
             BodyLong02 = 16
        
        /**
         14px / Subhead 2, Subhead-long 2, Body 1, Body-long 1
         - parameters:
            - property: $subhead-02
            - property: $subhead-long-02
            - property: $body-01
            - property: $body-long-01
         */
        case Subhead02,
             SubheadLong02,
             Body01,
             BodyLong01 = 14
        
        /**
         12px / Subhead 1, Caption
         - parameters:
            - property: $subhead-02
            - property: $subhead-long-02
         */
        case Subhead01, Caption = 12
    }

    static func SHSNBold(_ size: DSFontSize) -> Font {
        custom("SpoqaHanSansNeo-Bold", size: size.rawValue)
    }
    static func SHSNMedium(_ size: DSFontSize) -> Font {
        custom("SpoqaHanSansNeo-Medium", size: size.rawValue)
    }
    static func SHSNRegular(_ size: DSFontSize) -> Font {
        custom("SpoqaHanSansNeo-Regular", size: size.rawValue)
    }
    static func SHSNLight(_ size: DSFontSize) -> Font {
        custom("SpoqaHanSansNeo-Light", size: size.rawValue)
    }
    static func SHSNThin(_ size: DSFontSize) -> Font {
        custom("SpoqaHanSansNeo-Thin", size: size.rawValue)
    }
}
