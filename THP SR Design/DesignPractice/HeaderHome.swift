//
//  HeaderHome.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 29/11/22.
//

import SwiftUI

struct HeaderHome: View {
    var body: some View {
        StickyAnimatedHeader()
        // MARK: - Alwyas dark mode
            .preferredColorScheme(.dark)
    }
}

struct HeaderHome_Previews: PreviewProvider {
    static var previews: some View {
        HeaderHome()
    }
}
