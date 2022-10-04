//
//  DataFilms.swift
//  MeuPrimeiroAppiOS
//
//  Created by user on 14/09/22.
//

import Foundation

class DataFilms {
    
    static var films: [Film] = []
    
    static func getFavotiteFilms() -> [Film] {
        var favoriteFilms:[Film] = []
        
        for film in DataFilms.films {
            if (film.isMyFavorite) {
                favoriteFilms.append(film)
            }
        }
        return favoriteFilms
    }
}
