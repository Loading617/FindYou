func handleMatch(userID: String, likedUserID: String) {
    let db = Firestore.firestore()

    // Check if the other user liked this user
    db.collection("Likes").document(likedUserID).getDocument { document, error in
        if let document = document, document.exists, let data = document.data(),
           let likedUsers = data["likedUsers"] as? [String], likedUsers.contains(userID) {
            print("It's a Match!")
            // Notify both users of the match
        } else {
            print("No match yet")
        }
    }

    // Add liked user to the current user's list
    db.collection("Likes").document(userID).setData([
        "likedUsers": FieldValue.arrayUnion([likedUserID])
    ], merge: true)
}
