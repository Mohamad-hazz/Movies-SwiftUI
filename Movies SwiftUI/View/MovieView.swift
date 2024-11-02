//
//  MovieView.swift
//  Movies SwiftUI
//
//  Created by Mohammad Hazimeh on 01/11/2024.
//

import SwiftUI
struct MovieView: View {

    var movie : Movie
 


    var body: some View {
        HStack{
            Image(movie.imagename)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            VStack{
                Text(movie.name)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    
                Text(movie.date)
                    .foregroundColor(.white)
                    .font(.caption)
                
                
                Text(movie.duration)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }
            Spacer()
            
            Image("star-icon")
                .resizable()
                .frame(width: 20, height: 20)
            Text("\(movie.rating , specifier: "%.2f")")
            
.foregroundColor(.white)
                
        
   
        }
        .frame(maxWidth: .infinity)
        .background(.black)
        .cornerRadius(30)
        .shadow(color: .yellow, radius: 5, x: 0, y: 0)
       
        
    }
}
#Preview {
    MovieView(movie: Movie( name:"SHAWSHANK REDEMPTION", imagename: "shaw", date: "1994", duration: "2h 22m", rating: 9.3, details: "Synopsis. In 1947, Andy Dufresne (Tim Robbins), a banker in Maine, is convicted of murdering his wife and her lover, a golf pro. Since the state of Maine has no death penalty, he is given two consecutive life sentences and sent to the notoriously harsh Shawshank Prison"))
}
