//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 05/03/21.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK:- Properties
    
    var fruits : [Fruit] = fruitsData
    //MARK:- Body
    var body: some View {
        TabView {
            ForEach(fruitsData[0...5]) { item in
                FruitCardView(fruit: item)
            }
        } //MARK:- TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

//MARK:- Preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
