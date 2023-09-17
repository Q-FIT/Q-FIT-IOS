//
//  CounMainViewController.swift
//  Q-FIT
//
//  Created by 이서연 on 2023/09/18.
//

import UIKit


class CounMainViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var categoryStackView: CategoryButtonStackView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var posts: [(title: String, content:String, likes:String, comment:String,time:String,writer:String )] = [(title:"1",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw"),(title:"2",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw"),(title:"3",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw"),(title:"4",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw"),(title:"5",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw"),(title:"6",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw"),(title:"7",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw"),(title:"8",content:"상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하고싶은 내용을 작성하는 공간입니다.상담하...",likes:"1",comment:"1",time:"1",writer:"dwdw")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonTitles = ["버튼 1", "버튼 2ㅂㅈㄷㅂㅈㄷㅂㅈㄷㅈㅂㄷ", "버튼 3", "버튼 4", "버튼 5", "버튼 6"]
        
        categoryStackView.addButtons(withTitles: buttonTitles)

        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumInteritemSpacing = 0 // 셀 사이의 수평 간격
        flowLayout.minimumLineSpacing = 0 // 셀 사이의 수직 간격
        flowLayout.itemSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)

        collectionView.collectionViewLayout = flowLayout

        collectionView.register(CounMainCollectionViewCell.self, forCellWithReuseIdentifier: "CounMainCollectionViewCell")

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CounMainCollectionViewCell", for: indexPath) as? CounMainCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let post = posts[indexPath.item]
        cell.titleLabel?.text = post.title
//        cell.titleLabel.text = post.title
//        cell.contentLabel.text = post.content
//        cell.likeButton.setTitle(post.likes, for: .normal)
//        cell.commentButton.setTitle(post.comment, for: .normal)
//        cell.timeLabel.text = post.time
//        cell.writerLabel.text = post.writer
//
//        cell.contentLabel.numberOfLines = 0
//        cell.contentLabel.sizeToFit()
        print(cell.titleLabel)
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        let height: CGFloat = 100 // Set your desired item height
        return CGSize(width: width, height: height)
    }
}
