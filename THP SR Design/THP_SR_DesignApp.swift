//
//  THP_SR_DesignApp.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 14/11/22.
//

import SwiftUI

@main
struct THP_SR_DesignApp: App {
    var body: some Scene {
        WindowGroup {
            let dateHolder = DateHolder()
            ContentViewSticky()
                .environmentObject(dateHolder)
        }
    }
}
