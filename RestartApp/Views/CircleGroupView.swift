//
//  CircleGroupView.swift
//  RestartApp
//
//  Created by Barış Can Sertkaya on 22.03.2023.
//

import SwiftUI

struct CircleGroupView: View {
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
        }
        
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}