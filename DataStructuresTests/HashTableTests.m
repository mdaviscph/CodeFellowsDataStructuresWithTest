//
//  HashTableTests.m
//  DataStructures
//
//  Copyright © 2015 CF. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HashTable.h"
#import "HashNode.h"

@interface HashTableTests : XCTestCase

@property (strong, nonatomic) HashTable *hashTable;     // added after testExistsAfterInit

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

- (void)testObjectNilIfNeverAdded {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  [self.hashTable setObject:@(2) forKey:@"BB"];
  [self.hashTable setObject:@(3) forKey:@"CC"];
  XCTAssertNil([self.hashTable objectForKey:@"DD"]);
}

- (void)testObjectStillRetrievableAfterCollision {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  [self.hashTable setObject:@(2) forKey:@"BB"];
  [self.hashTable setObject:@(3) forKey:@"CC"];
  [self.hashTable setObject:@(4) forKey:@"DD"];
  [self.hashTable setObject:@(5) forKey:@"EE"];
  [self.hashTable setObject:@(6) forKey:@"FF"];
  [self.hashTable setObject:@(7) forKey:@"GG"];
  [self.hashTable setObject:@(8) forKey:@"HH"];
  [self.hashTable setObject:@(9) forKey:@"II"];
  XCTAssertEqual([self.hashTable objectForKey:@"AA"], @(1));
}

- (void)testObjectStillRetrievableAfterMultipleCollisions {
  [self.hashTable setObject:@(1) forKey:@"AA"];
  [self.hashTable setObject:@(2) forKey:@"BB"];
  [self.hashTable setObject:@(3) forKey:@"CC"];
  [self.hashTable setObject:@(4) forKey:@"DD"];
  [self.hashTable setObject:@(5) forKey:@"EE"];
  [self.hashTable setObject:@(6) forKey:@"FF"];
  [self.hashTable setObject:@(7) forKey:@"GG"];
  [self.hashTable setObject:@(8) forKey:@"HH"];
  [self.hashTable setObject:@(9) forKey:@"II"];
  [self.hashTable setObject:@(10) forKey:@"JJ"];
  [self.hashTable setObject:@(11) forKey:@"KK"];
  [self.hashTable setObject:@(12) forKey:@"LL"];
  [self.hashTable setObject:@(13) forKey:@"MM"];
  [self.hashTable setObject:@(14) forKey:@"NN"];
  [self.hashTable setObject:@(15) forKey:@"OO"];
  [self.hashTable setObject:@(16) forKey:@"PP"];
  [self.hashTable setObject:@(17) forKey:@"QQ"];
  XCTAssertEqual([self.hashTable objectForKey:@"AA"], @(1));
  XCTAssertEqual([self.hashTable objectForKey:@"II"], @(9));
}

- (void)testPerformanceExample {
  [self measureBlock:^{
  }];
}

@end
