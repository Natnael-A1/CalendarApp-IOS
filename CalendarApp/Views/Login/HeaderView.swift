//
//  LoginHeaderView.swift
//  CalendarApp
//
//  Created by Natneal Asmelash on 9/19/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            //Header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: 10))
                    .offset(y: -12)
                VStack {
                    Text("The Calendar App")
                        .font(.system(size: 42))
                        .foregroundColor(Color.white)
                        .bold()
                    Text("Organize all your commitments in one app")
                        .font(.system(size: 18))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 50)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: UIScreen.main.bounds.height / 3)
            .offset(y: -100)
            Spacer()
        }
    }
}

#Preview {
    HeaderView()
}
