//
//  HomeView.swift
//  Weather
//
//  Created by Giuseppe Davanzo on 12/06/23.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.83 // 702/844
    case middle = 0.385 // 325/844
}

struct HomeView: View {
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: Background Color
                Color
                    .background
                    .ignoresSafeArea()
                
                // MARK: Background Image
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                
                // MARK: House Image
                Image("House")
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 257)
                
                
                // MARK: Hero
                VStack(spacing: -10)
                {
                    Text("Montreal")
                        .font(.largeTitle)
                    
                    VStack {
                        Text("19°")
                            .font(.system(size: 96, weight: .thin))
                            .foregroundColor(.primary)
                        
                        Text("Mostly Clear")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.secondary)
                        
                        Text("H:24°   L:18°")
                            .font(.title3.weight(.semibold))
                    }
                    Spacer()
                }
                .padding(.top, 51)
                
                // MARK: TabBar
                TabBar(action: {})
            }
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
