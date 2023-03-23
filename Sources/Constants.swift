//
//  Constants.swift
//  NDT7
//
//  Created by NietoGuillen, Miguel on 4/22/19.
//  Copyright © 2019 M-Lab. All rights reserved.
//

import Foundation

/// Test measurement constants.
public class NDT7TestConstants : NSObject {

    /// Origin of the test.
    @objc public enum Origin: Int, Codable {

        /// client indicates that the measurement origin is the client.
        case client

        /// server indicates that the measurement origin is the server.
        case server
    }

    /// Kind of test.
    @objc public enum Kind: Int, Codable {

        /// download indicates that this is a download.
        case download

        /// upload indicates that this is an upload.
        case upload
    }

    /// Test cancelled.
    @objc public static let cancelled = "Test cancelled"

    /// Test cancelled error.
    public static let cancelledError = NSError(domain: NDT7WebSocketConstants.domain,
                                               code: 0,
                                               userInfo: [NSLocalizedDescriptionKey: cancelled])
}

/// Websocket constants definition.
public class NDT7WebSocketConstants : NSObject {

    /// Domain.
    public static let domain = "net.measurementlab.NDT7"
    
    @objc public static let noMLabServer = "Cannot find a suitable MLab server"

    /// MLab Server discover constants.
    public struct MLabServerDiscover {

        /// Discover closer server hostname url.
        public static let hostname = "locate.measurementlab.net"

        /// Discover server path.
        public static let path = "v2/nearest/ndt/ndt7"

        /// Client name query parameter.
        public static let clientName  = "ndt7-client-ios"

        /// Discover closer MLab Server
        public static let url = "https://\(hostname)/\(path)?client_name=\(clientName)"

        /// Cannot find a suitable MLab server error
        public static let noMLabServerError = NSError(domain: NDT7WebSocketConstants.domain,
                                                      code: 0,
                                                      userInfo: [NSLocalizedDescriptionKey: noMLabServer])
    }

    /// Websocket constants definition.
    public struct Request {

        /// protocol key header.
        public static let headerProtocolKey = "Sec-WebSocket-Protocol"

        /// protocol value header.
        public static let headerProtocolValue = "net.measurementlab.ndt.v7"

        /// Download Path.
        public static let downloadPath = "/ndt/v7/download"

        /// Upload Path.
        public static let uploadPath = "/ndt/v7/upload"

        /// downloadTimeout is the time in seconds after which the download must stop.
        public static let downloadTimeout: TimeInterval = 15

        /// uploadTimeout is the time in seconds after which the upload must stop.
        public static let uploadTimeout: TimeInterval = 15

        /// ioTimeout is the timeout in seconds for I/O operations.
        public static let ioTimeout: TimeInterval = 7

        /// updateInterval is the interval between client side upload measurements.
        public static let updateInterval: TimeInterval = 0.25

        /// bulkMessageSize is the size of uploaded messages
        public static let bulkMessageSize = 1 << 13

        /// maxConcurrentMessages is the max concurrent messages for upload
        public static let maxConcurrentMessages: UInt = 100

        /// uploadRequestDelay is delay for upload messages
        public static let uploadRequestDelay: Double = Double(maxConcurrentMessages) * Double(bulkMessageSize) / (4 * 125000) / 100
    }
}
