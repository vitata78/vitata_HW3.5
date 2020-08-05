//
//  DetailsView.swift
//  vitata_HW3.5
//
//  Created by Andrew Tolstov on 8/4/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
	
	let persons: [Person]
	
	var body: some View {
		NavigationView {
			List {
				
				ForEach(persons) { person in
					
					Section(header: sectionView(fullName: person.fullName)) {
						
						HStack {
							Image(systemName: Contacts.email.rawValue).foregroundColor(.blue)
							Text("\(person.email)")
						}
						HStack {
							Image(systemName: Contacts.phone.rawValue).foregroundColor(.blue)
							Text("\(person.phone)")
						}
						
						
					}
					
				}
				
				
				
				
			}
			.listStyle(GroupedListStyle())
			.navigationBarTitle("Details List")
		}
	}
}

struct sectionView: View {
	
	var fullName: String
	
	var body: some View {
		Text("\(fullName)")
			.fontWeight(.bold)
			.font(.headline)
			
	}
	
	
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(persons: Person.getPersons())
    }
}
