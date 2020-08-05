//
//  Person.swift
//  vitata_HW2.7
//
//  Created by Andrew on 6/9/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import SwiftUI

struct Person: Identifiable {
	var id = UUID()
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
}

extension Person {
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []

        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(firstName: firstNames[index],
                                lastName: lastNames[index],
                                email: emails[index],
                                phone: phones[index])
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
