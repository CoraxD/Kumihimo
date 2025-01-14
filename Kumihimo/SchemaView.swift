//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct SchemaView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	
	var body: some View {
		ZStack {
			switch braidStorage.curBraid.name {
			case "Braid 4A":
				Scheme4aView()
			default:
				Scheme4aView()
			}
		}
	}
}

#Preview {
	SchemaView()
		.environmentObject(BraidStorage())
}
