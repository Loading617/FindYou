func sendMessage(chatID: String, senderID: String, text: String) {
    let db = Firestore.firestore()
    db.collection("Chats").document(chatID).updateData([
        "messages": FieldValue.arrayUnion([
            ["senderID": senderID, "text": text, "timestamp": Date()]
        ])
    ])
}
