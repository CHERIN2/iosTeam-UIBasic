import UIKit

class NewView: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var commentTextField: UITextField!
    @IBOutlet weak var commentsTableView: UITableView!

    var comments: [String] = [] // 댓글을 저장할 배열

    override func viewDidLoad() {
        super.viewDidLoad()

        // 메인 테이블 뷰와 댓글 테이블 뷰의 데이터 소스와 델리게이트 설정
        mainTableView.dataSource = self
        mainTableView.delegate = self
        commentsTableView.dataSource = self
        commentsTableView.delegate = self
        
        // 댓글 테이블 뷰 셀 등록
        commentsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "CommentCell")
        
        // 메인 테이블 뷰의 셀 높이 설정
        mainTableView.rowHeight = UITableView.automaticDimension
        mainTableView.estimatedRowHeight = 50
    }
    
    // 댓글 작성 버튼 눌렀을 때 실행되는 메서드
    @IBAction func postComment(_ sender: UIButton) {
        if let comment = commentTextField.text, !comment.isEmpty {
            comments.append(comment) // 댓글 배열에 추가
            commentsTableView.reloadData() // 댓글 테이블 뷰 새로고침
            commentTextField.text = nil // 입력 필드 초기화
        }
    }
    
    // 댓글 삭제 메서드
    func deleteComment(at index: Int) {
        comments.remove(at: index) // 댓글 배열에서 해당 인덱스의 댓글 삭제
        commentsTableView.reloadData() // 댓글 테이블 뷰 새로고침
    }
}

extension NewView: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == mainTableView {
            return 1 // 메인 테이블 뷰는 1개의 셀만 보여줌
        } else if tableView == commentsTableView {
            return comments.count // 댓글 테이블 뷰는 댓글 개수만큼 셀 보여줌
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == mainTableView {
            // 메인 테이블 뷰 셀 설정
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
            let list = UserList.dummyList[indexPath.row]
            cell.userNickname?.text = list.userNickname
            cell.profile?.image = list.userProfileImg
            cell.content?.text = list.content
            cell.contentImg?.image = resizeImage(image: list.contentImg, width: 280)
            return cell
        } else if tableView == commentsTableView {
            // 댓글 테이블 뷰 셀 설정
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell", for: indexPath)
            cell.textLabel?.text = comments[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    // 댓글 테이블 뷰 셀 삭제 기능 구현
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if tableView == commentsTableView && editingStyle == .delete {
            deleteComment(at: indexPath.row) // 댓글 삭제 메서드 호출
        }
    }
}

extension NewView {
    
    // 이미지 리사이징 메서드
    func resizeImage(image: UIImage?, width: CGFloat) -> UIImage? {
        guard let image = image else {
            return nil
        }
        let scale = width / image.size.width
        let height = image.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: width, height: height))
        image.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}

