//
//  SettingsView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 06/03/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
  
    
    let infoApplication: [String] = ["Developer","Designer","Compability","Github","Linkedin","SwiftUI","Version"]
    
    let informations: [String] = ["M.Kilmer","Robert Petras","MKilmer", "Marcos Kilmer","2.0","1.0"]
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators:false) {
                VStack(spacing:20){
                    GroupBox(label: SettingsViewLabel(image: "info.circle", description: "Fructus".uppercased()), content: {
                       
                        Divider().padding(.vertical, 20)
                        
                        HStack(alignment:.center, spacing: 20){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80,height: 80)
                                .cornerRadius(9)
                            //MARK:- Image
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories.None have cholesterol.Fruits are sources of many essencial nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            //MARK:- Text
                        } //MARK:- HStack
                    })
                        
                     //MARK:-  GroupBox
                    
                    GroupBox(label: SettingsViewLabel(image: "paintbrush", description: "Customization".uppercased()), content: {
                        Divider().padding(.vertical, 20)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box . That way, it starts the onboarding process and you will see the welcome screen again")
                            .font(.footnote)
                        
                        Toggle(isOn: $isOnboarding) {
                            
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                                
                            } else {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                            
                        } //MARK:- Toggle
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                            
                    })
                    
                    GroupBox(label: SettingsViewLabel(image: "apps.iphone", description: "Application".uppercased()), content: {
                        
                        Divider().padding(.vertical, 10)
                        
                        ForEach(0..<infoApplication.count) { index in
                            HStack() {
                                Text(infoApplication[index])
                                    .fontWeight(.bold)
                                    .font(.headline)
                                
                                Spacer()
                                
                                if index == 3 {
                                    ApplicationLinkLabelView(link:"https://github.com/mkilmerr",name:"MKilmer")
                                } else if index == 4 {
                                    ApplicationLinkLabelView(link:"https://www.linkedin.com/in/marcos-kilmer/",name:"M.Kilmer")
                                } else {
                                    Text(infoApplication[index])
                                       
                                }
                            }
                            .padding()
                            
                        }
                    })
                    
                    //MARK:- GroupBox
                } //MARK:- VStack
                .cornerRadius(9)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
            } //MARK:- ScrollView
            
        }
    } //MARK:- NavigationView
    
}
//MARK:- Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
