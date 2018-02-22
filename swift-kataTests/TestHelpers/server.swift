//
//  server.swift
//  swift-kata
//
//  Created by Jessica Le on 2/21/18.
//  Copyright © 2018 lovelejess. All rights reserved.
//
import Swifter
import XCTest

var server: HttpServer!

func startServer() {
    server = HttpServer()
    
    server["/"] = { response in
        return HttpResponse.ok(HttpResponseBody.json(["value": "6"] as NSDictionary))
    }
    do {
        try server.start(5001)
    } catch {
        XCTFail("Failed to start server.")
    }
}

