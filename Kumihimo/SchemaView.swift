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
			switch braidStorage.curBraid.grid {
			case .grid4a:
				Scheme4aView()
			case .grid8a:
				Scheme4aView()
			case .grid8c:
				Scheme4aView()
			case .grid8d:
				Scheme4aView()
			case .grid8e:
				Scheme4aView()
			case .grid8f:
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
