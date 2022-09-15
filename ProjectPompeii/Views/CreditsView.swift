//
//  CreditsView.swift
//  ProjectPompeii
//
//  Created by Alex A. Rocha on 14/09/22.
//

import SwiftUI

struct CreditsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ScrollView {
            
            VStack {
            
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color("SecondaryColor-1"))
                        .overlay(
                            Circle()
                                .strokeBorder(Color("Contorno"), lineWidth: 3))
                        .font(.system(size: 60, weight: .bold))
                        .background(
                            Circle()
                                .foregroundColor(Color("TertiaryColor-1"))
                        )
                }
                
                Text("CREDITS")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Black", size: 20))
                    .foregroundColor(Color("SecondaryColor-1"))
                
            }
            .padding()
            
            VStack {
            
                Text("App Developers")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Bold", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
                Text("Alex A. Rocha\nAna Kiara Medeiros Braga")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Regular", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
            }
            .padding(.bottom)
            
            VStack {
            
                Text("UI/UX Designer")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Bold", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
                Text("Matheus da Silva Souza")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Regular", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
            }
            .padding(.bottom)
            
            VStack {
            
                Text("Quick Draw dataset")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Bold", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
                Text("Made available by Google, Inc.\nunder the Creative Commons Attribution\n4.0 International license.\nhttps://creativecommons.org/licenses/by/4.0/")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Regular", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
            }
            .padding(.bottom)
            
            VStack {
            
                Text("Rubik Marker Hatch Font")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Bold", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
                Text("Copyright 2020 The Rubik Filtered Project Authors\n(https://https://github.com/NaN-xyz/Rubik-Filtered)\nThis Font Software is licensed under the\nSIL Open Font License, Version 1.1.\nWhich is available with a FAQ at:\nhttp://scripts.sil.org/OFL")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Regular", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
            }
            .padding(.bottom)
            
            VStack {
            
                Text("Rubik Font")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Bold", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
                Text("Copyright 2015 The Rubik Project Authors\n(https://github.com/googlefonts/rubik)\nThis Font Software is licensed under the SIL Open Font\nLicense, Version 1.1.\nThis license is available with the FAQ at:\nhttp://scripts.sil.org/OFL")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Regular", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
            }
            .padding(.bottom)
            
            VStack {
            
                Text("Sounds")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Bold", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
                Text("Fantasia Fantasia Kevin MacLeod (incompetech.com)\nLicensed under Creative Commons: By Attribution 4.0 License\nhttp://creativecommons.org/licenses/by/4.0/")
                    .multilineTextAlignment(.center)
                    .font(.custom("Rubik-Regular", size: 17))
                    .foregroundColor(Color("SecondaryColor-1"))
                
            }
        
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DrawBackground"))
        
    }
    
}

//struct MainView: View {
//
//    @State private var showSheet = false
//
//    var body: some View {
//        Button("Show Sheet") {
//            showSheet.toggle()
//        }
//        .sheet(isPresented: $showSheet) {
//            CreditsView()
//        }
//    }
//}

//struct CreditsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreditsView()
//    }
//}