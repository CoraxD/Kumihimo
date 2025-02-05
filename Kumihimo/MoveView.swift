//
//  MoveView.swift
//  Kumihimo
//
//  Created by Дмитрий on 05.02.2025.
//

import SwiftUI

struct MoveView: View {
	@Binding var step: Int
	@Binding var moveStep: MoveStep
	let threadSize: CGFloat = 10
    var body: some View {
			VStack {
				ZStack {
					Circle()
						.fill(.white)
						.stroke(.black, lineWidth: 1)
						.frame(width: 200, height: 200)
					Text("\($step.wrappedValue)")
					ForEach(moveStep.passThread, id: \.self) {thread in
						Circle()
							.fill(.gray)
							.stroke(.black, lineWidth: 1)
							.frame(width: threadSize, height: threadSize)
							.offset(x: 110 * sin(Double(thread) * Double.pi/180.0),
											y: 110 * cos(Double(thread) * Double.pi/180.0))
					}
					ArrowShape(radius: 110.0, move: moveStep.leftMove)
						.stroke(.black)
						.offset(x: 120, y: 120)
					Circle()
						.fill(.red)
						.stroke(.black, lineWidth: 1)
						.frame(width: threadSize, height: threadSize)
						.offset(x: 110 * sin(Double(moveStep.leftMove.start) * Double.pi/180.0),
										y: 110 * cos(Double(moveStep.leftMove.start) * Double.pi/180.0))
					ArrowShape(radius: 110.0, move: moveStep.rightMove)
						.stroke(.black)
						.offset(x: 120, y: 120)
					Circle()
						.fill(.green)
						.stroke(.black, lineWidth: 1)
						.frame(width: threadSize, height: threadSize)
						.offset(x: 110 * sin(Double(moveStep.rightMove.start) * Double.pi/180.0),
										y: 110 * cos(Double(moveStep.rightMove.start) * Double.pi/180.0))
					
				}
				.frame(width: 240, height: 240, alignment: .center)
				.padding()
			}
    }
}

#Preview {
	MoveView(step: .constant(1), moveStep: .constant(MoveStep()))
}
