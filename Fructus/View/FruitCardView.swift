//
//  FruitCardView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 05/03/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK:- Properties
    @State private var isAnimating:Bool = false
    let fruit:Fruit
    
    //MARK:- Body
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 10), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //MARK:- Fruit: Image
                //MARK:- Fruit: Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2, x: 2, y: 6)
                //MARK:- Fruit: Headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth:480)
                
                StartButtonView()
                //MARK:- Fruit: Button Start
            } //MARK:- VStack
        } //MARK:- ZStack
        
        .onAppear {
            withAnimation(.easeOut(duration:0.5)) {
                isAnimating = true
            }
        }
       
        .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK:- Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .previewLayout(PreviewLayout.fixed(width: 320, height: 640))
            
    }
}
