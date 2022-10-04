//
//  Film.swift
//  MeuPrimeiroAppiOS
//
//  Created by user on 14/09/22.
//

import Foundation

class Film {
    
    var name: String
    var imageName: String
    var isMyFavorite: Bool
    
    init(name: String, imageName: String, isMyFavorite: Bool) {
        self.name = name
        self.imageName = imageName
        self.isMyFavorite = isMyFavorite
    }
    
}
