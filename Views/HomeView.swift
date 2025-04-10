import SwiftUI
import FirebaseFirestore

struct HomeView: View {
    @State private var users: [UserModel] = []

    var body: some View {
        ZStack {
            ForEach(users) { user in
                ProfileCardView(user: user)
            }
        }
        .onAppear(perform: fetchUsers)
    }

    func fetchUsers() {
        let db = Firestore.firestore()
        db.collection("users").getDocuments { snapshot, error in
            guard let docs = snapshot?.documents else { return }
            self.users = docs.compactMap {
                try? $0.data(as: UserModel.self)
            }
        }
    }
}
