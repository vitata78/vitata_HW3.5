//
//  ContentView.swift
//  vitata_HW3.5
//
//  Created by Andrew Tolstov on 8/4/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

let persons = Person.getPersons()

struct ContentView: View {
    var body: some View {
		TabView {
			ContactsView(persons: persons)
				.tabItem {
					Image(systemName: "person.3")
					Text("Contacts")
				}
			DetailsView(persons: persons)
				.tabItem {
					Image(systemName: "book.circle")
					Text("Details")
				}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
