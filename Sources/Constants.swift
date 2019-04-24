//
//  Constants.swift
//  NDT7
//
//  Created by NietoGuillen, Miguel on 4/22/19.
//  Copyright © 2019 M-Lab. All rights reserved.
//

import Foundation

/// Websocket constants definition.
public struct NDT7Constants {

    /// Test cancelled.
    public static let domain = "net.measurementlab.NDT7"

    /// Websocket constants definition.
    public struct WebSocket {

        /// Hostname.
        public static let hostname = "35.235.104.27"

        /// Download Path.
        public static let downloadPath = "/ndt/v7/download"

        /// Upload Path.
        public static let uploadPath = "/ndt/v7/upload"

        /// protocol key header.
        public static let headerProtocolKey = "Sec-WebSocket-Protocol"

        /// protocol value header.
        public static let headerProtocolValue = "net.measurementlab.ndt.v7"

        /// Accept key header.
        public static let headerAcceptKey = "Sec-WebSocket-Accept"

        /// Accept value header.
        public static let headerAcceptValue = "Nhz+x95YebD6Uvd4nqPC2fomoUQ="

        /// Version key header.
        public static let headerVersionKey = "Sec-WebSocket-Version"

        /// Version value header.
        public static let headerVersionValue = "13"

        /// WebSocket key header.
        public static let headerKey = "Sec-WebSocket-Key"

        /// WebSocket value header.
        public static let headerValue = "DOdm+5/Cm3WwvhfcAlhJoQ=="
    }

    /// Test Constants.
    public struct Test {

        /// Test cancelled.
        public static let cancelled = "Test cancelled"
    }
}