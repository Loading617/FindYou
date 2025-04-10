import SwiftUI
import Firebase

@main
struct DatingAppApp: App {
    @StateObject var authViewModel = AuthViewModel()

    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            if authViewModel.user != nil {
                HomeView()
            } else {
                LoginView(authViewModel: authViewModel)
            }
        }
    }
}
