//
//  Home.swift
//  CustomSlider (iOS)
//
//  Created by Manuel Duarte on 26/2/22.
//

import SwiftUI

struct Home: View {
    
    // Current Index
    @State var currentIndex: Int = 0
    
    var body: some View {
        
        ZStack{
            
            // Background Tab View
            TabView(selection: $currentIndex){
                
                ForEach(posts.indices, id: \.self ){index in
                     
                    GeometryReader{ proxy in
                        
                        Image(posts[index].postImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                            .cornerRadius(1)
                    }
                    .ignoresSafeArea()
                    .offset(y: -100)
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentIndex)
            .overlay(
            
                LinearGradient(colors: [
                
                    Color.clear,
                    Color.black.opacity(0.2),
                    Color.white.opacity(0.4),
                    Color.white,
                    Color.white,
                    Color.white,
                    
                ], startPoint: .top, endPoint: .bottom)
            
            )
            .ignoresSafeArea()
            
            // Postss...
            SnapCarousel(spacing: getRect().height < 750 ? 15 : 20,
                    trailingSpace: getRect().height < 750 ? 100
                         : 150, index: $currentIndex, items: posts) {post in
                
                CardView(post: post)
            
            }
             .offset(y: getRect().height / 3.5)
            
        }
        
    }
    
    @ViewBuilder
    func CardView(post: Post)->some View{
        
        VStack(spacing: 10) {
            
            // Image...
            GeometryReader{ proxy in
                
                Image(post.postImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width,
                           height: proxy.size.height)
                    .cornerRadius(25)
            }
            .padding(15)
            .background(Color.white)
            .cornerRadius(25)
            .frame(height: getRect().height / 2.5)
            .padding(.bottom, 15)
            
            // Movie Data...
            Text(post.title)
                .font(.title2.bold())
            
            HStack(spacing: 3){
                
                ForEach(1...5, id: \.self){index in
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(index <=
                          post.startRating ? .yellow : .gray)
                }
                Text("(\(post.startRating).0)")
            }
            .font(.caption)
            
            Text(post.description)
                .font(getRect().height < 750 ? .caption : .callout)
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .padding(.top, 8)
                .padding(.horizontal)
        }
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .previewDevice("iPhone 13")
    }
}

// Screen Bounds...
extension View {
    func getRect()->CGRect {
        return UIScreen.main.bounds
    }
}
