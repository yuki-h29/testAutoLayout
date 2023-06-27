//
//  ViewController.swift
//  testAutoLayout
//
//  Created by 平野裕貴 on 2023/06/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var contentHeightConstraint: NSLayoutConstraint!
    
    
    // ラベルを追加するためのカウンター
    var count: Int = 0
    @IBAction func testButton(_ sender: Any) {
        // 新しいラベルを生成
        let newLabel = UILabel()
        newLabel.translatesAutoresizingMaskIntoConstraints = false
        newLabel.text = "Label \(count)"
        
        // ラベルをContentViewに追加
        contentView.addSubview(newLabel)

        // ラベルに対する制約を設定
        newLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        newLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: CGFloat((20 * count))).isActive = true

        // ContentViewの高さを更新
        count += 1
        contentHeightConstraint.constant = CGFloat(20 * count)
    }
    
    
}

