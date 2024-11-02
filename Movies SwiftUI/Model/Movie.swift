//
//  Movie.swift
//  Movies SwiftUI
//
//  Created by Mohammad Hazimeh on 01/11/2024.
//

import Foundation
struct Movie: Identifiable{
    
    
    var id = UUID()
    var name : String
    var imagename: String
    var date : String
    var duration :String
    var rating: Double
    var details: String
    }

