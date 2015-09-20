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
@property (nonatomic) NSUInteger ccount;                    // added after testObjectEqualToSetObjectWithSameKey

@end

@implementation HashTable

- (NSUInteger)count {               // added after testObjectEqualToSetObjectWithSameKey
  return self.ccount;
}

- (instancetype)init {              // added after testObjectEqualToInitialSetObject
    self = [super init];
    if (self) {
      _hashNodes = [[NSMutableArray alloc] initWithCapacity:kAllocationSize];
      for (NSUInteger i = 0; i < kAllocationSize; i++) {
        [_hashNodes addObject:[NSNull null]];
      }
    }
    return self;
}

- (void)setObject:(id)object forKey:(NSString *)key {   // added after testCountIsOneAfterInitialSet
  //self.count = 1;                                     // added after testCountIsOneAfterInitialSet
  //self.count++;                                       // added after testCountIsTwoAfterSecondSet
  //self.hashNodes[0] = object;                         // added after testObjectEqualToInitialSetObject
  self.hashNodes[[HashTable hashValue:key]] = object;   // added after testObjectEqualToSetObjectWithSameKey
  self.ccount++;                                        // added after testObjectEqualToSetObjectWithSameKey
}

- (id)objectForKey:(NSString *)key {                  // added after testObjectNonNilAfterInitialGet
  //return [[NSObject alloc] init];                   // added after testObjectNonNilAfterInitialGet
  //return self.hashNodes[0];                         // added after testObjectEqualToInitialSetObject
  return self.hashNodes[[HashTable hashValue:key]];   // added after testObjectEqualToSetObjectWithSameKey
}

+ (NSUInteger)hashValue:(NSString *)key {     // added after testObjectEqualToSetObjectWithSameKey
  return [key hash] % kAllocationSize;
}
@end
