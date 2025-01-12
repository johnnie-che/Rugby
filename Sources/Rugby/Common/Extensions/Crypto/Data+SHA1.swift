//
//  Data+SHA1.swift
//  Rugby
//
//  Created by Colton Schlosser on 03.08.2022.
//

import CommonCrypto
import Foundation

extension Data {
    func sha1() -> String {
        var digest = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
        withUnsafeBytes { _ = CC_SHA1($0.baseAddress, CC_LONG(count), &digest) }
        let hexBytes = digest.map { String(format: "%02hhx", $0) }
        return hexBytes.joined()
    }
}
