//
//  StubAuthService.swift
//  GreetMe
//
//  Created by Jason Allen on 7/2/2023.
//

import Foundation
import GreetMeFramework

class StubAuthService: AuthService {
    func login(userName: String, password: String) throws {
        if userName == "43906621" && password == "Password" {
        } else {
            throw(AuthError.notAuthenticated)
        }
    }
}
