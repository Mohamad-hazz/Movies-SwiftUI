//
//  ContentView.swift
//  Movies SwiftUI
//
//  Created by Mohammad Hazimeh on 01/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    let MovieList : [Movie] = [
    
        Movie(name: "SHAWSHANK REDEMPTION", imagename: "shaw", date: "1994", duration: "2h 22m", rating: 9.3, details: "Synopsis. In 1947, Andy Dufresne (Tim Robbins), a banker in Maine, is convicted of murdering his wife and her lover, a golf pro. Since the state of Maine has no death penalty, he is given two consecutive life sentences and sent to the notoriously harsh Shawshank Prison."),
        Movie(name: "THE GODFATHER", imagename: "one", date: "1972", duration: "2h 55m", rating: 9.2, details: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."),
        Movie(name: "THE DARK KNIGHT", imagename: "batman", date: "2008", duration: "2h 32m", rating: 9.0, details: "When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness."),
        Movie(name: "THE GODFATHER PART II", imagename: "two", date: "1974", duration: "3h 22m", rating: 9.0, details: "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate."),
        Movie(name: "12 ANGRY MEN", imagename: "angry", date: "1957", duration: "1h 36m", rating: 9.0, details: "The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict."),
        Movie(name: "THE LORD OF THE RINGS", imagename: "lordd", date: "2003", duration: "3h 21m", rating: 9.0, details: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.")
 
    
    ]

    let colums = [
        GridItem(.flexible()),
        

    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack{
               
                    header
                    

                    LazyVGrid( columns: colums, spacing: 20) {
                        ForEach(self.MovieList){ movie in
                            NavigationLink(destination: MovieDetailsView(movie: movie) ){
                                MovieView(movie: movie)}
                                
                            }
                        }
                    }
        
                }.background(.black)
            }
            
    }
    
    }

    var header: some View {
        ZStack {
            
            VStack{
                HStack{
                
                    Text("TOP MOVIES")
                        .underline()
                        .foregroundColor(.white)
                        .font(.system(size: 45, weight: .bold, design: .serif))
                        .shadow(color: .yellow, radius: 10, x: 0, y: 0)
//                    Button(action: {
//                        // What the button does
//                    }) {
//                        // How the button looks like
//                        Text("Button")
//                            .fontWeight(.semibold)
//                            .foregroundColor(Color.blue)
//                            .padding(10)
//                            .frame(minWidth: 68)
//                            .background(
//                                RoundedRectangle(cornerRadius: 10)
//                                    .fill(Color.white)
//                        )
//                    }.buttonStyle(.plain)
//                
//                    
                }
               
                Image("header")
                    .resizable()
                    .scaledToFit()

            }
           
        }
  
    }


#Preview {
    ContentView()
}
