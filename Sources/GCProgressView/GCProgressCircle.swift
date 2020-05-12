//
//  GCProgressCircle.swift
//  
//
//  Created by Gray Campbell on 5/11/20.
//

import SwiftUI

struct GCProgressCircle: Shape {
    
    // MARK: Properties
    
    var progress: Double
    
    var animatableData: Double {
        get { self.progress }
        set { self.progress = newValue }
    }
    
    // MARK: Path
    
    func path(in rect: CGRect) -> Path {
        guard self.progress > .zero else {
            return Path()
        }
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.size.width, rect.size.height) / 2
        let startAngle = Angle.degrees(-90)
        let endAngle = startAngle + .degrees(360 * self.progress)
        
        var path = Path()
        
        path.move(to: center)
        path.addArc(center: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: false)
        
        return path
    }
}
