//
//  LoginView.swift
//  CalendarApp
//
//  Created by Natneal Asmelash on 9/19/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView()
                
                //Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button{
                        //onclick login
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                VStack {
                    Text("Create an Account")
                    NavigationLink(
                        "Register",
                        destination: RegisterView())
                }
                Spacer()
            }
        }
    }
}

struct LoginView_Preview: PreviewProvider{
    static var previews: some View {
        LoginView()
    }
}
