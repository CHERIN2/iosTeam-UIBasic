
import UIKit

struct UserList{
    var userNickname: String
    var userProfileImg: UIImage?
    var content: String
    var contentImg: UIImage?

static var dummyList = [
    UserList(userNickname: "cherin", userProfileImg: UIImage(named: "profile1"), content: "야호", contentImg: UIImage(named: "contents1")),
    UserList(userNickname: "jltldud", userProfileImg: UIImage(named: "profile2"), content: "무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호무야호", contentImg: UIImage(named: "contents2")),
    UserList(userNickname: "d9yarn", userProfileImg: UIImage(named: "profile3"), content: "안녕~~~~~~~~~~~~~~~~~~~!", contentImg: UIImage(named: "contents3")),
    UserList(userNickname: "hdjin92", userProfileImg: UIImage(named: "profile4"), content: "네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥네엥", contentImg: UIImage(named: "contents4")),
]
}
