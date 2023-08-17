import UIKit

struct UserList{
    var userNickname: String
    var userProfileImg: UIImage?
    var content: String
    var contentImg: UIImage?
    
    static var dummyList = [
        UserList(userNickname: "cherin",
                 userProfileImg: UIImage(named: "profile1"),
                 content: "#미안하다 이거 보여주려고 어그로끌었다..\n나루토 사스케 싸움수준 ㄹㅇ실화냐? 진짜 세계관 최강자들의 싸움이다.. 그 찐따같던 나루토가 맞나? 진짜 나루토는 전설이다.. 세계 최강 전설적인 영웅 호카게가 된 나루토를 보면 진짜 내가 다 감격스럽고 나루토 노래부터 명장면까지 가슴 울리는 장면들이 뇌리에 스치면서 가슴이 웅장해진다.. 하.. ㅆㅂ 사스케 보고싶다..  진짜 언제 이렇게 신급 최강들이 되었을까 옛날 생각나고 나 중딩 때 생각나고 뭔가 슬프기도 하고 좋기도 하고 감격도 하고 여러가지 감정이 복잡하네.. 아무튼 나루토는 진짜 애니 중 최거명작임..",
                 contentImg: UIImage(named: "content1")),
        UserList(userNickname: "jltldud",
                 userProfileImg: UIImage(named: "profile2"),
                 content: "원래 오타쿠들은 물어보지 않아도 자기가 좋아하는 주제를 나불거리곤 한다......",
                 contentImg: UIImage(named: "content2")),
        UserList(userNickname: "d9yarn",
                 userProfileImg: UIImage(named: "profile3"),
                 content: "나 고딩 때 졸업사진 찍는데 애들이 포즈 뭐할지 고민하길래 냅다 조사병단 경례 포즈 알려주고 찍음ㅎ 개인적으로 굉장히 마음에 드는 사진 중 하나임",
                 contentImg: UIImage(named: "content3")),
        UserList(userNickname: "hdjin92",
                 userProfileImg: UIImage(named: "profile4"),
                 content: "#전생슬 #애니추천 #넷플릭스추천\n진짜 ㄹㅇ 개재밋음 꼭 보셈 두번보셈 세번보셈 개미친존잼 개존잼 대존잼",
                 contentImg: UIImage(named: "content4")),
    ]
}
