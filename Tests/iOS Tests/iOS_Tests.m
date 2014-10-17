//
//  iOS_Tests.m
//  iOS Tests
//
//  Created by Harold Dost III on 10/10/14.
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "OJWT.h"

@interface iOS_Tests : XCTestCase

@end

@implementation iOS_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class
    NSDate 
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testClaimSetFromJson {
    // This is an example of a functional test case.
    [[NSJSONSerialization dataWithJSONObject:<#(id)#> options:<#(NSJSONWritingOptions)#> error:<#(NSError *__autoreleasing *)#>
    XCTAssertEqualObjects(@"{\"iss\":\"joe\",\"exp\":1300819380,\"http://example.com/is_root\":true}", @"{\"iss\":\"joe\",\"exp\":1300819380,\"http://example.com/is_root\":true}",@"Pass");
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
    [[NSException exceptionWithName:@"" reason:@"" userInfo:nil] raise];
    NSString* string = @"somestring";
    string
}

@end
