//
//  DitailView.swift
//  ThekusDayDiary
//
//  Created by t2023-m0064 on 2023/08/20.
//

import UIKit

class NewView: UIViewController {
    
    // 아울렛: 스토리보드에서 뷰 컨트롤러와 연결된 테이블 뷰
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 데이터 소스와 델리게이트 설정
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
        // 탭 제스처 추가하여 화면 탭 이벤트 감지
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    // 화면 탭 이벤트 핸들러
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        // 새로운 뷰 컨트롤러 생성 및 화면 전환
        let newView = NewView() // 새로운 NewView 인스턴스 생성
        navigationController?.pushViewController(newView, animated: true) // 네비게이션 컨트롤러를 사용하여 새로운 뷰로 전환
    }
}

// UITableViewDataSource, UITableViewDelegate 프로토콜 구현
extension NewView: UITableViewDataSource, UITableViewDelegate {
    
    // cellForRowAt, numberOfRowsInSection 등을 여기에 추가해주세요.
    
    // 각 셀의 높이를 설정하는 메서드
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.rowHeight = 50
        return UITableView.automaticDimension
    }
    
    // 셀 선택 시 실행되는 메서드
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 셀 선택 해제
        mainTableView.deselectRow(at: indexPath, animated: true)
    }
    
    // 테이블 뷰의 섹션마다 셀 개수를 설정하는 메서드
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // 하나의 셀만 표시
    }
    
    // 셀 내용을 설정하는 메서드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
        let list = UserList.dummyList[indexPath.row]
        cell.userNickname?.text = list.userNickname
        cell.profile?.image = list.userProfileImg
        cell.content?.text = list.content
        cell.contentImg?.image = resizeImage(image: list.contentImg, width: 280)
        return cell
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

// WriteViewControllerDelegate 프로토콜 구현
extension NewView: WriteViewControllerDelegate {
    
    // 새 글 작성 완료 시 호출되는 메서드
    func didCompleteWriting(userList: UserList) {
        // 데이터 추가 및 테이블 뷰 새로고침
        UserList.dummyList.insert(userList, at: 0)
        mainTableView.reloadData()
    }
}

