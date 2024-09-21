//
//  LoginView.swift
//  CalendarApp
//
//  Created by Natneal Asmelash on 9/19/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(
                    title: "The Calendar App",
                    subtitle: "Plan & organize your life",
                    angle: 12,
                    background: .pink)
                
                //Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button{
                        //onclick login
                        viewModel.login()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                .offset(y: -50)
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
