//
//  StartingPositionView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct StartingPositionView: View {
	@Binding var colors: [Int: Color]
	
	@State var braid: Braid = Braid()
	@State var startingPosition: StartingPosition = .octo8
	@State var color: Color = .white
	@State var activeColor: Color = .white
	@State var activeThread: Set<Int> = []
	
	@StateObject var helper: MainViewHelper = MainViewHelper()
	
	
    var body: some View {
			GeometryReader { geometry in
				ZStack() {
					Circle()
						.offset()
						.fill(Color(white: 0.8))
						.stroke(.black)
						.padding(40)
						.onTapGesture {
							activeThread = []
						}
					ForEach(braid.startingPosition.positionArray(), id: \.self.number) {thread in
						let radius = min(geometry.size.width, geometry.size.height) / 2 - 30
						ThreadView(number: thread.number,
											 colors: $colors,
											 activeThread: $activeThread)
							.offset(x: thread.position.x * radius,
											y: thread.position.y * radius)
							.onTapGesture {
								if activeThread.contains(thread.number) {
									activeThread.remove(thread.number)
								} else {
									activeThread.insert(thread.number)
									if !NSColorPanel.shared.isVisible {
										NSColorPanel.shared.makeKeyAndOrderFront(nil)
									}
								}
							}
							.onAppear {
								NSColorPanel.shared.setTarget(self.helper)
								NSColorPanel.shared.setAction(#selector(self.helper.setColor))
							}
							.onChange(of: helper.color) { oldValue, newValue in
								for index in activeThread {
									colors[index] = helper.color
								}
							}
					}
					
				}
				.padding()
			}
    }
}
class MainViewHelper: ObservableObject {
	@Published var color: Color = .white
	
	@objc func setColor(colorPanel: NSColorPanel) {
					color = Color(colorPanel.color)
	}
}

#Preview {
	StartingPositionView(colors: .constant([1: .red, 2: .indigo]))
}
