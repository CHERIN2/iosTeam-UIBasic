import UIKit

// Delegate 프로토콜
protocol WriteViewControllerDelegate: AnyObject {
    func didCompleteWriting(userList: UserList)
}

class WriteViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    weak var delegate: WriteViewControllerDelegate?
    
    @IBOutlet weak var textView: UITextView!  // 본문을 작성하는 텍스트뷰
    @IBOutlet weak var imageView: UIImageView! // 선택한 이미지를 표시하는 이미지뷰
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 뒤로가기 버튼
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        tabBarController?.selectedIndex = 0
    }
    
    
    // 사진 버튼
    @IBAction func addPhotoButton(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true, completion: nil)
    }

    // 확인 버튼
    @IBAction func confirmButton(_ sender: UIBarButtonItem) {
        // 텍스트와 이미지를 가져와서 새 userlist 객체 생성, hdjin92프로필 기반
        let newUserList = UserList(userNickname: "hdjin92",
                                   userProfileImg: UIImage(named: "profile4"),
                                   content: textView.text,
                                   contentImg: imageView.image)
        
        // Delegate를 통해 MainView에 데이터 전달
        delegate?.didCompleteWriting(userList: newUserList)
        
        // 글쓰기 화면 닫기(0번 인덱스로 이동, 텍스트뷰와 이미지뷰 초기화)
        tabBarController?.selectedIndex = 0
        textView.text = ""
        imageView.image = nil
    }
    
    // 이미지 선택 후 호출되는 delegate 메서드
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = selectedImage // 선택된 이미지를 UIImageView에 표시
        }
        dismiss(animated: true, completion: nil) //이미지 선택후 선택창 닫기
    }
}
