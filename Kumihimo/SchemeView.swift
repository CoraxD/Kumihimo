//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct SchemeView: View {
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
	SchemeView()
		.environmentObject(BraidStorage())
}
