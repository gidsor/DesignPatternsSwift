//: Playground - noun: a place where people can play

import Cocoa

protocol VideoServiceProtocol {
    func loadVideoList(url: URL?) -> [Data]?
}

class VideoService : VideoServiceProtocol {
    func loadVideoList(url: URL?) -> [Data]? {
        // loading from network
        return []
    }
}

class Proxy: VideoServiceProtocol {
    var service: VideoServiceProtocol?
    private var cashedData: [Data]?
    
    init(service: VideoServiceProtocol) {
        self.service = service
    }
    
    func loadVideoList(url: URL?) -> [Data]? {
        if cashedData == nil {
            cashedData = service?.loadVideoList(url: url)
        }
        return cashedData
    }
}

var videoService = VideoService()
var proxy = Proxy(service: videoService)
proxy.loadVideoList(url: nil)
