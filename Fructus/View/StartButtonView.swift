//
//  StartButtonView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 05/03/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK:- Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //MARK:- body
    var body: some View {
        Button(action: {
           isOnboarding = false
        }){
            HStack(spacing:8) {
                
                Text("Start")
                    .foregroundColor(.white)
                //MARK:- Start: Title
               
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .accentColor(.white)
                //MARK:- Start: Image
                
            } //MARK:- HStack
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
            
        } //MARK:- Button
    }
}

//MARK:- Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
