//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Theofilus Kuntolukito on 02/10/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label(
                "Toogle Favorite",
                systemImage: isSet ? "star.fill":"star"
            )
            .labelStyle(
                .iconOnly
            )
            .foregroundStyle(
                isSet ? .yellow:.gray
            )
        }
    }
}

#Preview {
    FavoriteButton(
        isSet: .constant(
            true
        )
    )
}
