import FirebaseAuth
import Combine

class AuthViewModel: ObservableObject {
    @Published var user: User?

    init() {
        self.user = Auth.auth().currentUser
        Auth.auth().addStateDidChangeListener { _, user in
            self.user = user
        }
    }

    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password)
    }

    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password)
    }

    func signOut() {
        try? Auth.auth().signOut()
    }
}
