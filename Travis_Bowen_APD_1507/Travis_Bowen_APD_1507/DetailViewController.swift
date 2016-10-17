//
//  DetailViewController.swift
//  Travis_Bowen_APD_1507
//
//  Created by Travis Bowen on 7/27/15.
//  Copyright (c) 2015 Travis Bowen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var symptomsTextView: UITextView!
    @IBOutlet weak var stepsTextView: UITextView!
    @IBOutlet weak var emergencyLabel: UILabel!
    var medicalObject : MedicalInfo? = nil
    var emergencyText = ""
    var symptomsText = ""
    var stepsText = ""
    
    
    //Function to show text in labels and text views
    override func viewWillAppear(animated: Bool) {
        //Adding text to the labels and text views
        emergencyLabel.text = emergencyText
        symptomsTextView.text = symptomsText
        stepsTextView.text = stepsText
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
