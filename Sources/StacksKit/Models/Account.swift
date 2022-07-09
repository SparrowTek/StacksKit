//
//  Account.swift
//  
//
//  Created by Thomas Rademaker on 7/8/22.
//

struct Account: Codable {
    /// The private key used for STX payments
    let stxPrivateKey: String
    
    /// The private key used in Stacks 1.0 to register BNS names
    let dataPrivateKey: String
    
    /// The salt is the same as the wallet-level salt. Used for app-specific keys
    let salt: String
    
    ///  A single username registered via BNS for this account
    let username: String?
    
    /// A profile object that is publicly associated with this account's username
    let profile: Profile?
    
    /// The root of the keychain used to generate app-specific keys
    let appsKey: String
    
    /// The index of this account in the user's wallet
    let index: Int
}
