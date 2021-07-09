//
//  ViewController.swift
//  SwiftNSWindow
//
//  Created by Ankith Madadi on 6/2/21.
//  Copyright © 2021 Ankith Madadi. All rights reserved.
//

import Cocoa
import WebKit

// see: https://developer.apple.com/documentation/webkit/wkwebview
class ViewController: NSViewController, WKNavigationDelegate, WKUIDelegate {
    
    // CGRect defines the width/height
    private var webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 1000, height: 600), configuration: WKWebViewConfiguration());
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // sets the delegate for webView
        webView.uiDelegate = self
        
        // Make WKWebView have a transparent background
        webView.setValue(false, forKey: "drawsBackground");
        
        // defines URL
        let myURL = URL(string:"http://localhost:3000")

        // creates request
        let myRequest = URLRequest(url: myURL!)

        // shows request
        webView.load(myRequest)

        // makes webView ready for Autolayout
        webView.translatesAutoresizingMaskIntoConstraints = false

        // adds webView to view
        view.addSubview(webView)
        
    }
    
    override var representedObject: Any? {
            didSet {
            // Update the view, if already loaded.
            }
    }
}
