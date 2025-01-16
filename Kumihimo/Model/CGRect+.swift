//
//  CGRect+.swift
//  Kumihimo
//
//  Created by Дмитрий on 16.01.2025.
//

import Foundation

extension CGRect {
	func fitRect(ratio: CGFloat) -> CGRect {
		let aspectRatio: CGFloat = (self.width / self.height) / ratio
		let frame: CGRect = aspectRatio > 1.0
		? CGRect(x: (self.width - self.width / aspectRatio) / 2, y: self.minY, width: self.width / aspectRatio, height: self.height)
		: CGRect(x: self.minX, y: (self.height - self.height * aspectRatio) / 2, width: self.width, height: self.height * aspectRatio)
		
		return frame
	}
}
