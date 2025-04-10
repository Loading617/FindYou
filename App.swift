import SwiftUI
import Firebase

@main
struct FindYouApp: App {
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
