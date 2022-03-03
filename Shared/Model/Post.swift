//
//  Post.swift
//  CustomSlider (iOS)
//
//  Created by Manuel Duarte on 27/2/22.
//

import SwiftUI

struct Post: Identifiable {
    
    var id = UUID().uuidString
    var postImage: String
    var title: String
    var description: String
    var startRating: Int

}

var posts = [
    
    Post(postImage: "marvel1", title: "Avengers: Endgame", description: "Después de los eventos devastadores de Avengers: Infinity War, el universo está en ruinas debido a las acciones de Thanos, el Titán Loco. Con la ayuda de los aliados que quedaron, los Vengadores deberán reunirse una vez más para intentar detenerlo y restaurar el orden en el universo de una vez por todas.", startRating: 4),
    
    Post(postImage: "marvel2", title: "Wolverine", description: "Wolverine, cuyo nombre de nacimiento es James Howlett ​ es un superhéroe ficticio que aparece en los cómics publicados por Marvel Comics, principalmente en asociación con los X-Men.", startRating: 5),
    
    Post(postImage: "marvel3", title: "Shang-Chi", description: "El maestro de artes marciales Shang-Chi se enfrenta al pasado que creía haber dejado atrás cuando se ve envuelto en la red de la misteriosa organización de los Diez Anillos.", startRating: 4),
    
    Post(postImage: "marvel4", title: "Black-Widow", description: "Black Widow (Viuda Negra en España) es una película de superhéroes estadounidense de 2021 basada en el personaje de Marvel Comics del mismo nombre.", startRating: 4),
    
    Post(postImage: "marvel5", title: "Ant-Man", description: "Ant-Man (Ant-Man: El Hombre Hormiga en América Hispana) es una película de superhéroes basada en el superhéroe de Marvel Comics del mismo nombre.", startRating: 5),
    
    Post(postImage: "marvel6", title: "Loki", description: "Loki es una serie de televisión estadounidense creada por Michael Waldron para la plataforma de streaming, Disney+, basada en el personaje de Marvel Comics.", startRating: 5),
    
]
