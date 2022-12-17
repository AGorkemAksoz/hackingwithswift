//
//  Person.swift
//  Project 10
//
//  Created by Ali Görkem Aksöz on 17.12.2022.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
