//
//  LoginView.swift
//  PizzaRatings-iOS
//
//  Created by Giedrius on 2021-10-01.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewmodel = LoginViewModel()
    
    var body: some View {
        LoginContent()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(LoginViewModel())
    }
}
