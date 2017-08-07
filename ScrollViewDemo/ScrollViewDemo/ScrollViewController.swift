//
//  ViewController.swift
//  ScrollViewController
//
//  Created by Joyce Echessa on 6/3/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {
    
    var scrollView : UIScrollView!
    var imagView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagView = UIImageView(image: UIImage(named: "image.png"))
        
        scrollView = UIScrollView(frame: view.bounds);
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = imagView.bounds.size
        scrollView.autoresizingMask = UIViewAutoresizing.flexibleWidth
        scrollView.contentOffset = CGPoint(x: 1000, y: 450)
        
        scrollView.delegate = self
        
        scrollView.addSubview(imagView)
        view.addSubview(scrollView)
        
        setZoomScale()
        setGestureRecognizer()
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imagView
    }
    
    // 让scrollView中的内容尽量沾满剩余的空间
    func setZoomScale() {
        let imageViewSize = imagView.bounds.size
        let scrollViewSize = scrollView.bounds.size
        let widthScale = scrollViewSize.width / imageViewSize.width
        let heightScale = scrollViewSize.height / imageViewSize.height
        
        scrollView.minimumZoomScale = min(widthScale, heightScale)
    }
    
    // 将scrollview中的内容居中
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        let imageViewSize = imagView.frame.size
        let scrollViewSize = scrollView.bounds.size
        
        let verticalPadding = imageViewSize.height < scrollViewSize.height ? (scrollViewSize.height - imageViewSize.height) / 2 : 0
        let horizontalPadding = imageViewSize.width < scrollViewSize.width ? (scrollViewSize.width - imageViewSize.width) / 2 : 0
        
        scrollView.contentInset = UIEdgeInsets(top: verticalPadding, left: horizontalPadding, bottom: verticalPadding, right: horizontalPadding)
        
    }
    
    func setGestureRecognizer() {
        let doubleTap = UITapGestureRecognizer(target: self, action: "handleDoubleTap:")
        doubleTap.numberOfTapsRequired = 2
        scrollView.addGestureRecognizer(doubleTap)
    }
    
    func handleDoubleTap(recognizer: UITapGestureRecognizer) {
        if scrollView.zoomScale > scrollView.minimumZoomScale {
            scrollView.setZoomScale(scrollView.minimumZoomScale, animated: true)
        } else {
            scrollView.setZoomScale(scrollView.maximumZoomScale, animated: true)
        }
    }


}

