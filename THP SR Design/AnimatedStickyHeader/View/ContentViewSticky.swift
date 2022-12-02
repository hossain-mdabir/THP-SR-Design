//
//  ContentViewSticky.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 2/12/22.
//

import SwiftUI

struct ContentViewSticky: View {
    var body: some View {
        GeometryReader {
            let safeArea = $0.safeAreaInsets
            let size = $0.size
            HomeSticky(safeArea: safeArea, size: size)
                .ignoresSafeArea(.container, edges: .top)
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentViewSticky_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewSticky()
    }
}
