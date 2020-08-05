//
//  PersonView.swift
//  vitata_HW3.5
//
//  Created by Andrew Tolstov on 8/4/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct PersonView: View {
	
	let person: Person
	
	var body: some View {
		VStack(alignment: .center, spacing: 20) {
			Image(systemName: "person.fill")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 150, height: 150)
				.opacity(0.5)
				.padding(50)
		}
		VStack(alignment: .leading) {
			Text("email: \(person.email)")
				.font(.title)
				.padding(.bottom)
			Text("phone: \(person.phone)")
				.font(.title)
			Spacer()
			
		}
		.navigationBarTitle("\(person.fullName)")
	}
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
		PersonView(person: Person.getPersons()[0])
    }
}
