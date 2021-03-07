//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 05/03/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit:Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 8) {
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text(fruit.title)
                            .foregroundColor(fruit.gradientColors[1])
                            .font(.title)
                            .fontWeight(.bold)
                        //MARK:- Title
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //MARK:- Headline
                        
                        //MARK:- Nutrients
                        FruitNutritionsView(fruit: fruit)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
                        //MARK:- SubHeadline
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.bold)
                        
                        //MARK:- Description
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //MARK:- Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //MARK:- VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth:640, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                } //MARK:- VStack
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
                
            } //MARK:- ScrollView
            .edgesIgnoringSafeArea(.top)
            
        } //MARK:- NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK:- Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[3])
    }
}
