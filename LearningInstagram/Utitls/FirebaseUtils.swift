//
//  FirebaseUtils.swift
//  LearningInstagram
//
//  Created by HieuTong on 2/20/21.
//

import Foundation
import Firebase


extension Database {
    static func fetchUserWithUID(uid: String, completion: @escaping (User) -> ()) {
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value) { (snapshot) in
            
            guard let userDictionary = snapshot.value as? [String:Any] else { return }
            let user = User(uid: uid, dictionary: userDictionary)
            completion(user)
        } withCancel: { (error) in
            print("failed to fetch user for posts: ", error)
        }
    }
}
