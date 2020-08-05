//
//  ContactsView.swift
//  vitata_HW3.5
//
//  Created by Andrew Tolstov on 8/4/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct ContactsView: View {
	
	let persons: [Person]
	
    var body: some View {
		NavigationView {
			List(persons) { person in
				NavigationLink(destination: PersonView(person: person)) {
					Text("\(person.fullName)")
				}
			}
			.navigationBarTitle("Contact List")
		}

    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
		ContactsView(persons: Person.getPersons())
    }
}
