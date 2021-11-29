import Foundation
import CommonCrypto

extension Data {
    func swiftyRSASHA1() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA1($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func swiftyRSASHA224() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA224_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA224($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func swiftyRSASHA256() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA256_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA256($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func swiftyRSASHA384() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA384_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA384($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }

    func swiftyRSASHA512() -> Data {
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA512_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA512($0.baseAddress, CC_LONG(count), &digest)
        }
        return Data(digest)
    }
}
