//
//  IntroFirstVC.swift
//  Parkata
//
//  Created by Kaustabh on 16/12/21.
//

import UIKit

class IntroFirstVC: UIViewController {

    var contentArray : [IntroPageContent] = []
    @IBAction func buttonSkip(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DecisionVC") as! DecisionVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBOutlet weak var pageControl: UIPageControl!
    @IBAction func buttonNext(_ sender: UIButton) {
        let collectionBounds = self.collectionView.bounds
              let contentOffset = CGFloat(floor(self.collectionView.contentOffset.x + collectionBounds.size.width))
              self.moveCollectionToFrame(contentOffset: contentOffset)
    }
    @IBAction func buttonPrevious(_ sender: UIButton) {
        let collectionBounds = self.collectionView.bounds
               let contentOffset = CGFloat(floor(self.collectionView.contentOffset.x - collectionBounds.size.width))
               self.moveCollectionToFrame(contentOffset: contentOffset)
    }
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet {
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
            self.collectionView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupContentArray()

        // Do any additional setup after loading the view.
    }
    
    //Move towards cell
    
    func moveCollectionToFrame(contentOffset : CGFloat) {
        let frame: CGRect = CGRect(x : contentOffset ,y : self.collectionView.contentOffset.y ,width : self.collectionView.frame.width,height : self.collectionView.frame.height)
        self.collectionView.scrollRectToVisible(frame, animated: true)
    }
    
    func setupContentArray() {
        self.contentArray.append(IntroPageContent(image: UIImage(named: "parking-lot 1"), headerText: "Parkata", detailsText: "Peer-to-Peer Parking Platform"))
        self.contentArray.append(IntroPageContent(image: UIImage(named: "suspension 1"), headerText: "Real Time Parking Availability", detailsText: "Simply dummA text of the printing and typeset ting industry. Simply dummA text of the printing and typeset ting industry. Simply dummA text of the printing and typeset ting industry."))
        self.contentArray.append(IntroPageContent(image: UIImage(named: "garage-shed 1"), headerText: "Find Parking", detailsText: "Parkata enables you to see available parking in real time. Parkata uses geo-fence technology that enables guests to check-in/check-out of a parking spot without needing to meet a host or have physical contact with a parking attendant. The best part, you can “check-in” before you arrive so you know exactly where your spot is. You only pay for the time from check-in” to “check-out.” No more adding time to a meter or needing cash to pay a parking attendant."))
        self.contentArray.append(IntroPageContent(image: UIImage(named: "garage 1"), headerText: "Host Parking", detailsText: "Do you own property near a large event, attraction, airport, or resort? Parkata was designed for you!  Create parking by becoming a host! Whether you want to rent out your driveway, monetize the last row of your parking lot, create pop-up parking in your driveway or yard for a special event, we can help."))
        self.contentArray.append(IntroPageContent(image: UIImage(named: "5 7"), headerText: "Membership Parking", detailsText: "Parkata is the perfect solution for a university, town, hotel, franchise, office park, or event. The look and feel of your organization coupled with the functionality of Parkata’s Peer to peer parking platform. We integrate our parking platform directly into your app. Your members and guests will love the geo-fence technology fully integrated into their parking experience."))
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let visibleRect = CGRect(origin: self.collectionView.contentOffset, size: self.collectionView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        if let visibleIndexPath = self.collectionView.indexPathForItem(at: visiblePoint) {
            self.pageControl.currentPage = visibleIndexPath.row
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension IntroFirstVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.contentArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IntroImagesCVC", for: indexPath) as! IntroImagesCVC
        cell.headerLabel.text = self.contentArray[indexPath.row].headerText
        cell.detailsLabel.text = self.contentArray[indexPath.row].detailsText
        cell.contentImage.image = self.contentArray[indexPath.row].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let tempwidth = UIScreen.main.bounds.width - 40 - 40
        return CGSize(width: tempwidth, height: self.collectionView.frame.size.height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

struct IntroPageContent {
    var image : UIImage? = nil
    var headerText : String? = ""
    var detailsText : String? = ""
}

