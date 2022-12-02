//
//  Album.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 2/12/22.
//

import Foundation


// MARK: - Album model and sample data
struct Album: Identifiable {
    
    var id = UUID().uuidString
    var albumName: String
    
}

var albums: [Album] = [
    
    Album(albumName: "In Between"),
    Album(albumName: "More"),
    Album(albumName: "Big Jet Plane"),
    Album(albumName: "Black Hole Nights"),
    Album(albumName: "Rain On Me"),
    Album(albumName: "Stuck With U"),
    Album(albumName: "7 Rings"),
    Album(albumName: "Bang Bang"),
    Album(albumName: "In Between"),
    Album(albumName: "More"),
    Album(albumName: "Big Jet Plan"),
    Album(albumName: "Black Hole Nights"),
    Album(albumName: "Rain On Me"),

]
