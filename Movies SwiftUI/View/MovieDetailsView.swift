//
//  MovieDetailsView.swift
//  Movies SwiftUI
//
//  Created by Mohammad Hazimeh on 02/11/2024.
//

import SwiftUI

struct MovieDetailsView : View {
    
    var movie: Movie
  
    var body: some View {
       
        ScrollView{
            
            
                
                
                
                VStack{
                    
                    Text(movie.name)
                        .fontWeight(.bold)
                        .padding(.bottom,  80)
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    
                    Image(movie.imagename)
                        .resizable()
                        .padding(.bottom)
                        .frame(width: 350, height: 350)
                    
                    Text(movie.details)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(.bottom,30)
                    
                    
                }
            
            
        }.background(.black)
    
            
            
        
    }
}





#Preview {
    MovieDetailsView(movie: Movie(name: "SHAWSHANK REDEMPTION", imagename: "shaw", date: "1994", duration: "2h 22m", rating: 9.3, details: "Synopsis. In 1947, Andy Dufresne (Tim Robbins), a banker in Maine, is convicted of murdering his wife and her lover, a golf pro. Since the state of Maine has no death penalty, he is given two consecutive life sentences and sent to the notoriously harsh Shawshank Prison"))
}
