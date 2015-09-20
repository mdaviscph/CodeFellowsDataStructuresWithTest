//
//  HashTableTests.m
//  DataStructures
//
//  Created by mike davis on 9/20/15.
//  Copyright © 2015 mike davis. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HashTable.h"
#import "HashNode.h"

@interface HashTableTests : XCTestCase

@property (strong, nonatomic) HashTable *hashTable;     // added after testExistsAfterInit
@property (strong, nonatomic) NSNumber *firstObject;    // added after testCountIsOneAfterInitialSet

@end

@implementation HashTableTests

- (void)setUp {
  [super setUp];
  self.hashTable = [[HashTable alloc] init];      // added after testExistsAfterInit
}

- (void)tearDown {
  self.hashTable = nil;                           // added after testExistsAfterInit
  [super tearDown];
}

- (void)testNonNilAfterInit {
  XCTAssertNotNil(self.hashTable);
}

- (void)testCountIsZeroAfterInit {
  XCTAssertEqual(self.hashTable.count, 0);
}

- (void)testCountIsOneAfterInitialSet {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  XCTAssertEqual(self.hashTable.count, 1);
}

- (void)testObjectNonNilAfterInitialGet {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  XCTAssertNotNil([self.hashTable objectForKey:@"AA"]);
}

- (void)testObjectEqualToInitialSetObject {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  XCTAssertEqual([self.hashTable objectForKey:@"AA"], @(1));
}

- (void)testCountIsTwoAfterSecondSet {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  [self.hashTable setObject:@(2) forKey:@"BB"];
  XCTAssertEqual(self.hashTable.count, 2);
}

- (void)testObjectEqualToSetObjectWithSameKey {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  [self.hashTable setObject:@(2) forKey:@"BB"];
  [self.hashTable setObject:@(3) forKey:@"CC"];
  XCTAssertEqual([self.hashTable objectForKey:@"BB"], @(2));
}

- (void)testPerformanceExample {
  [self measureBlock:^{
  }];
}

@end
