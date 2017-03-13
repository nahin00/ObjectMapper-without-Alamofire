//
//  File.swift
//  ObjectMapper without Alamofire
//
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    var username: String!
    var age : Int = 0
    
    init(username: String, age: Int) {
        self.username = username
        self.age = age
    }
    
    required init?(map: Map){}
    func mapping(map: Map){
    
        username <- map["username"]
        age <- map["age"]
    
    }
}


struct Temperature: Mappable {
    var celcius: Double?
    var fahrenheit: Double?
    
    init(celcius: Double, fahrenheit: Double) {
        self.celcius = celcius
        self.fahrenheit = fahrenheit
    }
    
    init(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        celcius <- map["celcius"]
        fahrenheit <- map["fahrenheit"]
    }
}
