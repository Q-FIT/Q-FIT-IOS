//
//  MainViewController.swift
//  Q-FIT
//
//  Created by 이서연 on 2023/09/18.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var dateCollectionView: UICollectionView!
    var posts: [(title: String, info:String,image:UIImage)] = [(title:"ㅇㄹㄴㄹㄴㅇㄹ",info:"dsfsdfsdfsdfdsfsd",image:UIImage(named:"counseling main img")!),(title:"ㅇㄹㄴㄹㄴㅇㄹ",info:"dsfsdfsdfsdfdsfsd",image:UIImage(named:"counseling main img")!),(title:"ㅇㄹㄴㄹㄴㅇㄹ",info:"dsfsdfsdfsdfdsfsd",image:UIImage(named:"counseling main img")!),(title:"ㅇㄹㄴㄹㄴㅇㄹ",info:"dsfsdfsdfsdfdsfsd",image:UIImage(named:"counseling main img")!),(title:"ㅇㄹㄴㄹㄴㅇㄹ",info:"dsfsdfsdfsdfdsfsd",image:UIImage(named:"counseling main img")!)]
    override func viewDidLoad() {
        super.viewDidLoad()

        dateCollectionView.delegate = self
        dateCollectionView.dataSource = self
        
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumInteritemSpacing = 0 // 셀 사이의 수평 간격
        flowLayout.minimumLineSpacing = 0 // 셀 사이의 수직 간격
        flowLayout.itemSize = CGSize(width: dateCollectionView.frame.width, height: dateCollectionView.frame.height)

        dateCollectionView.collectionViewLayout = flowLayout

        dateCollectionView.register(DateCollectionViewCell.self, forCellWithReuseIdentifier: "DateCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DateCollectionViewCell", for: indexPath) as? DateCollectionViewCell else {
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
