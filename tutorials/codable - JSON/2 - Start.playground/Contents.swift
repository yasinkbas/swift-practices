import Foundation

//try FileManager.copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: "Scenes", "Stickers")

public struct Sticker: Codable {
    public init (name: String,birthday: Date?,normalizedPosition: CGPoint,imageName: String) {
        self.name = name
        self.birthday = birthday
        self.normalizedPosition = normalizedPosition
        self.imageName = imageName
    }
    
    public let name: String
    public let birthday: Date?
    public let normalizedPosition: CGPoint
    public let imageName: String
    
//    public var image: UIImage? {
//    return FileManager.getPNGFromDocumentDirectory(subdirectoryName: "Stickers", imageName: imageName)
//    }
}

extension Sticker: Equatable {
    public static func ==(sticker0: Sticker, sticker1:Sticker) -> Bool {
        return sticker0.name == sticker1.name
        && sticker0.birthday == sticker1.birthday
        && sticker0.normalizedPosition == sticker1.normalizedPosition
        && sticker0.imageName == sticker1.imageName
    }
}

let name = "David Meawie"
let birthday = DateComponents(calendar: .current, year: 1947, month: 1, day: 8).date!
let normalizedPosition = CGPoint(x:0.3, y:0.5)
let imageName = "cat"

let sticker = Sticker(name: name, birthday: birthday, normalizedPosition: normalizedPosition, imageName: imageName)
let sticker1 = Sticker(name: name, birthday: birthday, normalizedPosition: normalizedPosition, imageName: "dog")
sticker == sticker1

