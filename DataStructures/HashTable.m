//
//  HashTable.m
//  DataStructures
//
//  Created by mike davis on 9/20/15.
//  Copyright © 2015 mike davis. All rights reserved.
//

#import "HashTable.h"

static const NSUInteger kAllocationSize = 32;         // added after testObjectEqualToInitialSetObject

@interface HashTable ()

@property (strong, nonatomic) NSMutableArray *hashNodes;    // added after testObjectEqualToInitialSetObject

@end

@implementation HashTable

- (instancetype)init {              // added after testObjectEqualToInitialSetObject
    self = [super init];
    if (self) {
      _hashNodes = [[NSMutableArray alloc] initWithCapacity:kAllocationSize];
    }
    return self;
}

- (void)setObject:(id)object forKey:(NSObject *)key {   // added after testCountIsOneAfterInitialSet
  //self.count = 1;                                     // added after testCountIsOneAfterInitialSet
  self.count++;                                       // added after testCountIsTwoAfterSecondSet
  self.hashNodes[0] = object;                         // added after testObjectEqualToInitialSetObject
}

- (id)objectForKey:(NSObject *)key {          // added after testObjectNonNilAfterInitialGet
  //return [[NSObject alloc] init];           // added after testObjectNonNilAfterInitialGet
  return self.hashNodes[0];                 // added after testObjectEqualToInitialSetObject
}

@end
