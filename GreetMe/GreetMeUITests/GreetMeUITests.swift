//
//  GreetMeUITests.swift
//  GreetMeUITests
//
//  Created by Jason Allen on 4/2/2023.
//

import XCTest

final class given_user_is_on_login_page: XCTestCase {
    
    private var app: XCUIApplication!
    private var loginPage: LoginPage!
    
    override func setUp() {
        app = XCUIApplication()
        loginPage = LoginPage(app: app)
        continueAfterFailure = false
        app.launch()
    }
    
    func test_when_user_enters_correct_username_and_password_then_user_is_directed_to_the_home_page() {
        
        loginPage.userName = "43906621"
        loginPage.password = "Password"
        
        loginPage.login()
        
        let homePageTitle = HomePage(app: app).title
        XCTAssertTrue(homePageTitle.waitForExistence(timeout: 2.0))
        
    }
    
    func test_when_user_enters_invalid_username_or_password_then_display_invalid_credentials_message() {
        
        loginPage.userName = "43906621"
        loginPage.password = "WrongPassword"
        
        loginPage.login()
        
        XCTAssertEqual(loginPage.message, "Invalid credentials")
    }
    
    func test_when_user_omits_username_or_password_then_display_missing_required_fields_message() {
        
        loginPage.userName = ""
        loginPage.password = ""
        
        loginPage.login()
        
        XCTAssertEqual(loginPage.message, "Required fields are missing")
    }
}
