//
//  OffsetModifier.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 30/11/22.
//

import SwiftUI

struct OffsetModifier: ViewModifier {
    
    @Binding var Offset: CGFloat
    
    // Optional to return value from 0
    var returnFromStart: Bool = true
    
    @State var startValue: CGFloat = 0
    
    func body(content: Content) -> some View {
        content
            .overlay {
                
                GeometryReader { proxy in
                    
                    Color.clear
                        .preference(key: OffsetKey.self, value: proxy.frame(in: .named("SCROLL")).midY)
                        .onPreferenceChange(OffsetKey.self) { value in
                            
                            if startValue == 0 {
                                
                                startValue = value
                                
                            }
                            
                            Offset = (value - (returnFromStart ? startValue : 0))
                            
                        }
                    
                }
                
            }
    }
    
}

// MARK: - Preferance Key
struct OffsetKey: PreferenceKey {
    
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        
        value = nextValue()
        
    }
    
}
