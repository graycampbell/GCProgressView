//
//  GCProgressBar.swift
//  
//
//  Created by Gray Campbell on 5/11/20.
//

import SwiftUI

struct GCProgressBar: Shape {
    
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
        
        let startPoint = CGPoint(x: rect.minX, y: rect.midY)
        let endPoint = CGPoint(x: rect.size.width * CGFloat(self.progress), y: rect.midY)
        
        var path = Path()
        
        path.move(to: startPoint)
        path.addLine(to: endPoint)
        
        return path
    }
}
