import FirebaseFirestore

func saveUserProfile(userID: String, name: String, age: Int, bio: String, photos: [String]) {
    let db = Firestore.firestore()
    db.collection("Users").document(userID).setData([
        "name": name,
        "age": age,
        "bio": bio,
        "photos": photos
    ]) { error in
        if let error = error {
            print("Error saving profile: \(error)")
        } else {
            print("Profile saved successfully!")
        }
    }
}
