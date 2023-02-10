//
//  LoginViewModelTest.swift
//  GreetMeTests
//
//  Created by Jason Allen on 7/2/2023.
//

import XCTest
import Mockingbird
@testable import GreetMeFramework

final class given_user_is_on_login_page: XCTestCase {
    
    var loginViewModel: LoginViewModel!
    var authService: AuthServiceMock!
    
    override func setUp() {
        authService = mock(AuthService.self)
        loginViewModel = LoginViewModel(service: authService)
    }
    
    
    func test_when_user_enters_correct_username_and_password_then_user_is_authenticated() {
        
        loginViewModel.userName = "43906621"
        loginViewModel.password = "Password"
        
        loginViewModel.login()
        
        XCTAssertEqual(loginViewModel.loginStatus, LoginStatus.authenticated)
        
    }
    
    func test_when_user_enters_invalid_username_or_password_then_user_is_denied() {
        
        let userName = "43906621"
        let password = "WrongPassword"
        loginViewModel.userName = userName
        loginViewModel.password = password
        
        givenSwift(authService.login(userName: userName, password: password)).will { _,_ in throw AuthError.notAuthenticated }
        
        loginViewModel.login()
        
        XCTAssertEqual(loginViewModel.loginStatus, LoginStatus.denied)
    }
    
    func test_when_user_omits_username_or_password_then_validation_fails() {
        
        loginViewModel.userName = ""
        loginViewModel.password = ""
        
        loginViewModel.login()
        
        XCTAssertEqual(loginViewModel.loginStatus, LoginStatus.validationFailed)
        
    }
    
}
