//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Theofilus Kuntolukito on 02/10/24.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle : Angle
    
    var body: some View {
        BadgeSymbol().padding(-60).rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
