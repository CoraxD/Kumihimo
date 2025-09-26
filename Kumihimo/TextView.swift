//
//  TextView.swift
//  Kumihimo
//
//  Created by Дмитрий on 26.09.2025.
//

import SwiftUI

struct TextView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			VStack {
				ScrollView {
					Text(braidStorage.curBraid.text ?? "Test text")
				}
			}
    }
}

#Preview {
    TextView()
		.environmentObject(BraidStorage())
}
