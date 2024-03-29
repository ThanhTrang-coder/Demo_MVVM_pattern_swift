//
//  NetworkService.swift
//  SwiftMvvmDemo
//
//  Created by Tung on 08/12/2023.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private var user: User?
    
    private init() {}
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "test@test.com" && password == "123456" {
                self?.user = User(firstName: "Michel", lastName: "Deman", email: "test@test.com", age: 30)
                completion(true)
            } else {
                self?.user = nil
                completion(true)
            }
        }
    }
    
    func getLoggedInUser() -> User {
        return user!
    }
}
