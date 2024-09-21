//
//  LoginViewViewModel.swift
//  CalendarApp
//
//  Created by Natneal Asmelash on 9/19/24.
//

//import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        guard validate() else {
            return
        }
        
        //Try login in
//        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        //guard agains empty fields
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in both the username and password."
            return false
        }
        
        //validate email
    
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email"
            return false
        }
        
        return true
    }
    
}
