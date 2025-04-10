import SwiftUI

struct ProfileCardView: View {
    var user: UserModel

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: user.imageURL)) { image in
                image.resizable().aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(height: 300)
            .cornerRadius(10)

            Text(user.name).font(.title)
            Text("\(user.age) • \(user.bio)").font(.subheadline)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}
