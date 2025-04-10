import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @ObservedObject var authViewModel: AuthViewModel

    var body: some View {
        VStack {
            TextField("Email", text: $email).textFieldStyle(.roundedBorder)
            SecureField("Password", text: $password).textFieldStyle(.roundedBorder)
            Button("Login") {
                authViewModel.signIn(email: email, password: password)
            }
            .padding()
        }.padding()
    }
}
