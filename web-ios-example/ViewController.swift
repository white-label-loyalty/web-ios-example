//
//  ViewController.swift
//  web-ios-example
//
//  Created by Matthew Webb on 12/07/2019.
//  Copyright © 2019 White Label Loyalty. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = WKWebView()
        self.view = webView

        let url = URL(string: "https://bk-ch.web.wlloyalty.net/")
        let request = URLRequest(url: url!)
        webView.load(request)
    }


}

