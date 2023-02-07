//
//  AuthService.swift
//  GreetMeFramework
//
//  Created by Jason Allen on 7/2/2023.
//

import Foundation

public protocol AuthService {
    func loginAsync(userName: String, password: String) async throws -> Void
}
