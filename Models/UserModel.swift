import Foundation

struct UserModel: Identifiable, Codable {
    var id: String
    var name: String
    var age: Int
    var bio: String
    var imageURL: String
}
