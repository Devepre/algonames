//
//  AlgoTests.swift
//  AlgoTests
//
//  Created by Serhii Kyrylenko on 24.02.2025.
//

import XCTest
@testable import Algo

final class AlgoTests: XCTestCase {
    
    func testResultWrongInput() throws {
        let input = "9*1"
        XCTAssertThrowsError(
            try generateNumbers(from: input) { _ in }
        ) { error in
            XCTAssertEqual(error as? AlgoError, AlgoError.wrongInput)
        }
    }
    
    func testResultWrongInputValue() throws {
        let input = "\(Int64.max)#"
        XCTAssertThrowsError(
            try generateNumbers(from: input) { _ in }
        ) { error in
            XCTAssertEqual(error as? AlgoError, AlgoError.wrongInput)
        }
    }
    
    func testResultx1() throws {
        let input = "#1"
        let comparison: [Int64] = [11, 21, 31, 41, 51, 61, 71, 81, 91]
        var result: [Int64] = []
        var index = 0
        try generateNumbers(from: input) {
            XCTAssertEqual($0, comparison[index])
            result.append($0)
            index += 1
        }
        XCTAssertEqual(result, comparison)
    }
    
    func testResult1x() throws {
        let input = "1#"
        let comparison: [Int64] = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
        var result: [Int64] = []
        var index = 0
        try generateNumbers(from: input) {
            XCTAssertEqual($0, comparison[index])
            result.append($0)
            index += 1
        }
        XCTAssertEqual(result, comparison)
    }
    
    func testResultxx6() throws {
        let input = "##6"
        let comparison: [Int64] = [106, 116, 126, 136, 146, 156, 166, 176, 186, 196, 206, 216, 226, 236, 246, 256, 266, 276, 286, 296, 306, 316, 326, 336, 346, 356, 366, 376, 386, 396, 406, 416, 426, 436, 446, 456, 466, 476, 486, 496, 506, 516, 526, 536, 546, 556, 566, 576, 586, 596, 606, 616, 626, 636, 646, 656, 666, 676, 686, 696, 706, 716, 726, 736, 746, 756, 766, 776, 786, 796, 806, 816, 826, 836, 846, 856, 866, 876, 886, 896, 906,  916, 926, 936, 946, 956, 966, 976, 986, 996]
        var result: [Int64] = []
        var index = 0
        try generateNumbers(from: input) {
            XCTAssertEqual($0, comparison[index])
            result.append($0)
            index += 1
        }
        XCTAssertEqual(result, comparison)
    }
    
    func testResult2x6() throws {
        let input = "2#6"
        let comparison: [Int64] = [206, 216, 226, 236, 246, 256, 266, 276, 286, 296]
        var result: [Int64] = []
        var index = 0
        try generateNumbers(from: input) {
            XCTAssertEqual($0, comparison[index])
            result.append($0)
            index += 1
        }
        XCTAssertEqual(result, comparison)
    }
    
    func testResultx6x() throws {
        let input = "#1#"
        let comparison: [Int64] = [110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 410,  411, 412, 413, 414, 415, 416, 417, 418, 419, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919]
        var result: [Int64] = []
        var index = 0
        try generateNumbers(from: input) {
            XCTAssertEqual($0, comparison[index])
            result.append($0)
            index += 1
        }
        XCTAssertEqual(result, comparison)
    }
    
    func testResultx9xx1() throws {
        let input = "9##1"
        let comparison: [Int64] = [9001, 9011, 9021, 9031, 9041, 9051, 9061, 9071, 9081, 9091, 9101, 9111, 9121, 9131, 9141, 9151, 9161, 9171, 9181, 9191, 9201, 9211, 9221, 9231, 9241, 9251, 9261, 9271, 9281, 9291, 9301, 9311, 9321, 9331, 9341, 9351, 9361, 9371, 9381, 9391, 9401, 9411, 9421, 9431, 9441, 9451, 9461, 9471, 9481, 9491, 9501, 9511, 9521, 9531, 9541, 9551, 9561, 9571, 9581, 9591, 9601, 9611, 9621, 9631, 9641, 9651, 9661, 9671, 9681, 9691, 9701, 9711, 9721, 9731, 9741, 9751, 9761, 9771, 9781, 9791, 9801, 9811, 9821, 9831, 9841, 9851, 9861, 9871, 9881, 9891, 9901, 9911, 9921, 9931, 9941, 9951, 9961, 9971, 9981, 9991]
        var result: [Int64] = []
        var index = 0
        try generateNumbers(from: input) {
            XCTAssertEqual($0, comparison[index])
            result.append($0)
            index += 1
        }
        XCTAssertEqual(result, comparison)
    }
}
