//
//  ThreadView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct ThreadView: View {
	@State var number: Int = 1
	@Binding var colors: [Int: Color]
	@Binding var activeThread: Set<Int>
	
	var body: some View {
		ZStack {
			Circle()
				.fill(colors[number] ?? .white)
				.stroke(activeThread.contains(number) ? .red : .black)
				.frame(width: 20)
			Text("\(number)")
				.foregroundStyle(colors[number]?.contrastColor() ?? .black)
		}
	}
}



#Preview {
	ThreadView(colors: .constant([1: .green]), activeThread: .constant([1]))
}
