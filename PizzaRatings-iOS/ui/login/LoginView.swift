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
