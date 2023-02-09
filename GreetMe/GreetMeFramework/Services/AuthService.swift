//
//  AuthService.swift
//  GreetMeFramework
//
//  Created by Jason Allen on 7/2/2023.
//

import Foundation

public enum AuthError: Error {
    case notAuthenticated
}

public protocol AuthService {
    func login(userName: String, password: String) throws -> Void
}
