//
//  HomeView.swift
//  RestartApp
//
//  Created by Barış Can Sertkaya on 22.03.2023.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    @State private var quoteText: String = ""
    let hapticFeedback = UINotificationFeedbackGenerator()
    var quotes: [QuoteItem] = testData
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                //Header
                Spacer()
                ZStack {
                    CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.2)
                    
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .offset(y: isAnimating ? 30 : -30)
                        .animation(
                            Animation
                                .easeInOut(duration: 3)
                                .repeatForever()
                            , value: isAnimating
                        )
                }
                //Center
                Text(quoteText)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(Color("ColorBlue"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                //Footer
                Spacer()
                
                Button(action: {
                    playSound(sound: "success", type: "m4a")
                    hapticFeedback.notificationOccurred(.success)
                    isOnboardingViewActive = true
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    
                    Text("Başa Dön")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .padding()
            }
            .onAppear {
                quoteText = quotes.randomElement()!.quote
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
                    isAnimating = true
                })
        }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
