//
//  GCProgressViewStyle.swift
//  
//
//  Created by Gray Campbell on 5/11/20.
//

import Foundation

public extension GCProgressView {
    
    /// The styles permitted for the progress view.
    
    enum Style: String, CaseIterable {
        
        /// A horizontal bar that animates from left to right.
        
        case bar
        
        /// A circle that animates clockwise.
        
        case circle
        
        /// A ring that animates clockwise.
        
        case ring
    }
}
