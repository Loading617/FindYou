import FirebaseAuth

func signUp(email: String, password: String, completion: @escaping (Error?) -> Void) {
    Auth.auth().createUser(withEmail: email, password: password) { result, error in
        completion(error)
    }
}

func login(email: String, password: String, completion: @escaping (Error?) -> Void) {
    Auth.auth().signIn(withEmail: email, password: password) { result, error in
        completion(error)
    }
}
