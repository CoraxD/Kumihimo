//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct SchemeView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	@State var curStep: Int = 1
	var body: some View {
		VStack() {
			HStack {
				Button {
					curStep = curStep > 1
					? curStep - 1
					: braidStorage.curBraid.moveSteps.count
				} label: {
					Image(systemName: "chevron.backward")
						.font(.title)
				}
				.buttonStyle(.plain)
				MoveView(step: $curStep, moveStep: curStep > braidStorage.curBraid.moveSteps.count
								 ? $braidStorage.curBraid.moveSteps[0]
								 : $braidStorage.curBraid.moveSteps[curStep - 1])
				Button {
					curStep = curStep < braidStorage.curBraid.moveSteps.count
					? curStep + 1
					: 1
				} label: {
					Image(systemName: "chevron.forward")
						.font(.title)
				}
				.buttonStyle(.plain)
			}
			.onChange(of: braidStorage.curBraid) { _, _ in
				curStep = 1
			}
			HStack {
				Circle()
					.fill(.red)
					.stroke(.black, lineWidth: 1)
					.frame(width: 10, height: 10)
				Text(" – Left Hand         ")
				Circle()
					.fill(.green)
					.stroke(.black, lineWidth: 1)
					.frame(width: 10, height: 10)
				Text(" – Right Hand")
			}
			HStack(spacing: 20) {
				ForEach(1...braidStorage.curBraid.moveSteps.count, id: \.self) { step in
					Button {
						curStep = step
					} label: {
						ZStack {
							Circle()
								.fill(Color.white)
							Text("\(step)")
								.font(.title2)
						}
						.frame(width: 30, height: 30)
					}
					.buttonStyle(.plain)
					.disabled(curStep == step)
				}
			}
		}
	}
}

#Preview {
	SchemeView()
		.environmentObject(BraidStorage())
}
