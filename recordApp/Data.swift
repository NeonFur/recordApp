//
//  Data.swift
//  recordApp
//
//  Created by Dylan Beasley on 4/3/23.
//

import Foundation
 

class Record{
    var frontImage: String
    var backImage: String
    var albumName: String
    var artistName: String
    var value = 0.0
    init(frontImage: String = "", backImage: String = "", albumName: String = "", artistName: String = "", value: Double = 0.0) {
        self.frontImage = frontImage
        self.backImage = backImage
        self.albumName = albumName
        self.artistName = artistName
        self.value = value
    }
    var imagineDragons = Record()
}
