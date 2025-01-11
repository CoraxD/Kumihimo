//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct GridView: View {
	@Binding var colors: [Int: Color]
	
	@State var braid: Braid = Braid()
	var body: some View {
		ZStack {
			ForEach(braid.grid.cells, id: \.self) {cell in
				ZStack {
					Path {path in
						path.move(to: cell.corners[0])
						for index in 1..<cell.corners.count {
							path.addLine(to: cell.corners[index])
						}
						path.closeSubpath()
					}
					.fill(colors[cell.number] ?? .white)
					.stroke(.black)
					Text("\(cell.number)")
						.position(x: cell.numOffset.x,
										y: cell.numOffset.y)
				}
			}
		}
	}
}

#Preview {
	GridView(colors: .constant([1: .red, 2: .green]))
}
