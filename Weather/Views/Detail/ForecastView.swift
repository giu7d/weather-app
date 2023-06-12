//
//  ForecastView.swift
//  Weather
//
//  Created by Giuseppe Davanzo on 12/06/23.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        ScrollView {}
            .backgroundBlur(radius: 25, opaque: true)
            .background(Color.bottomSheetBackground)
            .clipShape(RoundedRectangle(cornerRadius: 44))
            .overlay {
                // MARK: Bottom Sheet Separator
                Divider()
                    .blendMode(.overlay)
                    .background(Color.bottomSheetBorderTop)
                    .frame(minHeight: .infinity, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 44))
            }
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                    .frame(width: 48, height: 5)
                    .frame(height: 20)
                    .frame(maxHeight: .infinity, alignment: .top)
            }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
            .background(Color.background)
            .preferredColorScheme(.dark)
    }
}
