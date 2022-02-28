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
    
    Post(postImage: "marvel1", title: "Avengers EndGame", description: "Esta es una Pelicula de Marvel adaptada de un Commic", startRating: 4),
    
    Post(postImage: "marvel2", title: "Wolwerine", description: "Esta es una Pelicula de Marvel adaptada de un Commic", startRating: 5),
    
    Post(postImage: "marvel3", title: "Shan Shi", description: "Esta es una Pelicula de Marvel adaptada de un Commic", startRating: 4),
    
    Post(postImage: "marvel4", title: "Black Widow", description: "Esta es una Pelicula de Marvel adaptada de un Commic", startRating: 4),
    
    Post(postImage: "marvel5", title: "At Man", description: "Esta es una Pelicula de Marvel adaptada de un Commic", startRating: 5),
    
    Post(postImage: "marvel6", title: "Loki", description: "Esta es una Pelicula de Marvel adaptada de un Commic", startRating: 5),
    
]
