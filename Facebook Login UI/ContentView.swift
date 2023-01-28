//
//  ContentView.swift
//  Facebook Login UI
//
//  Created by Marcos Mendes on 28/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280)
                
                Spacer().frame(height: 64)
                
                VStack {
                    TextField("E-mail", text: $email)
                        .padding(.top, 24)
                        .padding(.bottom, 12)
                        .padding(.horizontal)
                        .keyboardType(.emailAddress)
                    
                    Divider()
                    
                    SecureField("Password", text: $password)
                        .padding(.top, 12)
                        .padding(.bottom, 24)
                        .padding(.horizontal)
                }
                .background(Color.white)
                .cornerRadius(5)
                
                Spacer().frame(height: 16)
                
                Button(action: {}) {
                    Text("Login")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color("ButtonColor"))
                        .cornerRadius(5)
                }
                
                Spacer().frame(height: 64)
                
                VStack(spacing: 8) {
                    Button(action: {}) {
                        Text("Dont have an account? Sign up.")
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                    Button(action: {}) {
                        Text("Forgot your password?")
                            .foregroundColor(Color("TextColor"))
                    }
                }
            }.padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
