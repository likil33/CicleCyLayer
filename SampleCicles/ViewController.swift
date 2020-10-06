//
//  ViewController.swift
//  SampleCicles
//
//  Created by santhosh on 10/12/18.
//  Copyright © 2018 nb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    var a = CGFloat()
    var label = UILabel()
    let grievanceClosedshapelayer = CAShapeLayer()
    let grievanceOpenshapelayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        grievanceDashboard(totalValue: 100, subvalue1: 25, subvalue2: 75, radius1: 50, radius2: 50, radius3: 70, subView: circleView)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    //circle chats
    func grievanceDashboard(totalValue:CGFloat,subvalue1:CGFloat,subvalue2:CGFloat,radius1:Int,radius2:Int,radius3:Int, subView:UIView){
        
        let point: CGPoint = CGPoint(x:(subView.bounds.size.width/2), y:(circleView.bounds.size.height/2))
        //        let center = userView.center
        let left = subView.convert(point, from: subView)
        
        //total submited gievance
        let start:CGFloat = CGFloat.pi / 2
        let end:CGFloat = -(2*CGFloat.pi + start)
        
        let tackLayer = CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter:left, radius: CGFloat(radius1), startAngle:-start,endAngle:end,clockwise:false)
        tackLayer.path = circularPath.cgPath
        tackLayer.strokeColor = UIColor.red.cgColor
        tackLayer.lineWidth = 5
        tackLayer.fillColor = UIColor.clear.cgColor
        tackLayer.lineCap = .round
        subView.layer.addSublayer(tackLayer)
        
        //Closed grievance
        let totalval:CGFloat = CGFloat(totalValue)//totalValue//submitted
        let subVal:CGFloat = CGFloat(subvalue1)//subvalue//Closed
        
        let percentateValue:CGFloat = subVal * (100/totalval)
        a = 2 * (percentateValue/100)
        
        let start1:CGFloat =  CGFloat.pi / 2
        let end1:CGFloat = -(a*CGFloat.pi + start)
        
        let circularPath1 = UIBezierPath(arcCenter:left, radius: CGFloat(radius2), startAngle:-start1,endAngle:end1,clockwise:false)
        
        grievanceClosedshapelayer.path = circularPath1.cgPath
        grievanceClosedshapelayer.strokeColor = UIColor.blue.cgColor  //3871B6
        grievanceClosedshapelayer.lineWidth = 5
        grievanceClosedshapelayer.fillColor = UIColor.clear.cgColor
        grievanceClosedshapelayer.lineCap = .round
        grievanceClosedshapelayer.strokeEnd = 0
        subView.layer.addSublayer(grievanceClosedshapelayer)
        
//        //openGrivance
//        let totalva2:CGFloat = CGFloat(totalValue)//totalValue//submitted
//        let subVa2:CGFloat = CGFloat(subvalue2)//subvalue//open
//
//        let percentateValue2:CGFloat = subVa2 * (100/totalva2)
//        a = 2 * (percentateValue2/100)
//
//        let start2:CGFloat =  CGFloat.pi / 2
//        let end2:CGFloat = -(a*CGFloat.pi + start2)
//
//        let circularPath2 = UIBezierPath(arcCenter:left, radius: CGFloat(radius3), startAngle:-start2,endAngle:end2,clockwise:false)
//
//        grievanceOpenshapelayer.path = circularPath2.cgPath
//        grievanceOpenshapelayer.strokeColor = UIColor.green.cgColor  //3871B6
//        grievanceOpenshapelayer.lineWidth = 5
//        grievanceOpenshapelayer.fillColor = UIColor.clear.cgColor
//        grievanceOpenshapelayer.lineCap = .round
//        grievanceOpenshapelayer.strokeEnd = 0
//        subView.layer.addSublayer(grievanceOpenshapelayer)
        
        self.addgrievanceAnimation()
        
    }
    
    @objc func addgrievanceAnimation () {
        print("attempting to animate stroke")
        let basicAnimation = CABasicAnimation(keyPath:"strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 1
        
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        
        grievanceClosedshapelayer.add(basicAnimation, forKey: "itIsBasic")
        //grievanceOpenshapelayer.add(basicAnimation, forKey: "itIsBasic")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    //circle chats
//    func userDashboard(totalValue:Float,subvalue:Float,radius1:Int,radius2:Int,radius3:Int, subView:UIView){
//
//        print("totalValue: \(totalValue) , subvalue:\(subvalue)")
//
//        let point: CGPoint = CGPoint(x:(subView.bounds.size.width/2), y:(subView.bounds.size.height/2))
//        // let center = userView.center
//        let left = subView.convert(point, from: subView)
//
//        let tackLayer = CAShapeLayer()
//        let start1:CGFloat = CGFloat.pi / 2
//        let end1:CGFloat = -(2*CGFloat.pi + start1)
//
//        let circularPath1 = UIBezierPath(arcCenter:left, radius: CGFloat(radius1), startAngle:-start1,endAngle:end1,clockwise:false)
//
//        tackLayer.path = circularPath1.cgPath
//        tackLayer.strokeColor = UIColor.black.cgColor //ff9933 // black
//        tackLayer.lineWidth = 12
//        tackLayer.fillColor = UIColor.clear.cgColor
//        tackLayer.lineCap = CAShapeLayerLineCap.round
//        subView.layer.addSublayer(tackLayer)
//
//        let registered:CGFloat = CGFloat(totalValue)                  //totalValue
//        let active:CGFloat = CGFloat(subvalue)                 //subvalue
//
//        let percentateValue:CGFloat = active * (100/registered)
//        a = 2 * (percentateValue/100)
//        print("a value is : \(a)")
//        self.label.removeFromSuperview()
//        //label prog.
//        label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 21))
//        //        label.center = CGPoint(x: 160, y: 285)
//        label.center = CGPoint(x:subView.bounds.size.width / 2.0, y:subView.bounds.size.height / 2.0)
//        label.textColor = UIColor.white
//        label.textAlignment = .center
//
//        label.text = "\(subvalue)"
//        subView.addSubview(label)
//
//        let start:CGFloat =  CGFloat.pi / 2
//        let end:CGFloat = -(a*CGFloat.pi + start)
//
//        print("end indicated value :\(end)")
//
//        let circularPath = UIBezierPath(arcCenter:left, radius: CGFloat(radius2), startAngle:-start,endAngle:end,clockwise:true)
//
//        shapelayer.path = circularPath.cgPath
//        shapelayer.strokeColor = UIColor.green.cgColor  //3871B6 // green
//        shapelayer.lineWidth = 5
//        shapelayer.fillColor = UIColor.clear.cgColor
//        shapelayer.lineCap = CAShapeLayerLineCap.round
//        shapelayer.strokeEnd = 0
//        subView.layer.addSublayer(shapelayer)
//
//        self.addUserFunction()
//    }
//
//    @objc func addUserFunction () {
//        print("attempting to animate stroke")
//        let basicAnimation = CABasicAnimation(keyPath:"strokeEnd")
//        basicAnimation.toValue = 1
//        basicAnimation.duration = 1
//        //        basicAnimation.fillMode = kCAFillModeBackwards
//        //        basicAnimation.fillMode = kCAFillModeBoth
//        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
//        basicAnimation.isRemovedOnCompletion = false
//        self.shapelayer.add(basicAnimation, forKey: "itIsBasic")
//        //        shapelayer1.add(basicAnimation, forKey: "itIsBasic1")
//    }



}
