//
//  HashTable.m
//  DataStructures
//
//  Created by mike davis on 9/20/15.
//  Copyright © 2015 mike davis. All rights reserved.
//

#import "HashTable.h"
#import "HashNode.h"                                        // added after testObjectStillRetrievableAfterCollision

static const NSUInteger kAllocationSize = 8;                // added after testObjectEqualToInitialSetObject

@interface HashTable ()

@property (strong, nonatomic) NSMutableArray *hashNodes;    // added after testObjectEqualToInitialSetObject
@property (nonatomic) NSUInteger ccount;                    // added after testObjectEqualToSetObjectWithSameKey

@end

@implementation HashTable

// added after testObjectEqualToSetObjectWithSameKey
- (NSUInteger)count {
  return self.ccount;
}

// added after testObjectEqualToInitialSetObject
- (instancetype)init {
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
  //self.hashNodes[[HashTable hashValue:key]] = object; // added after testObjectEqualToSetObjectWithSameKey
  self.ccount++;                                        // added after testObjectEqualToSetObjectWithSameKey
  //HashNode *node = [[HashNode alloc] init];           // added after testObjectStillRetrievableAfterCollision
  //node.object = object;                               // added after testObjectStillRetrievableAfterCollision
  //node.key = key;                                     // added after testObjectStillRetrievableAfterCollision
  //self.hashNodes[[HashTable hashValue:key]] = node;   // added after testObjectStillRetrievableAfterCollision
  
  // added after testObjectStillRetrievableAfterCollision
  HashNode *node = self.hashNodes[[HashTable hashValue:key]];
  if ([node isEqual:[NSNull null]]) {
    self.hashNodes[[HashTable hashValue:key]] = [[HashNode alloc] init:object withKey:key withNext:nil];
    return;
  }
  //node.next = [[HashNode alloc] init:object withKey:key withNext:nil]; // added after testObjectStillRetrievableAfterCollision
  
  // added after testObjectStillRetrievableAfterMultipleCollisions
  HashNode *prevNode = node;
  while (node) {
    if ([node.key isEqualToString:key]) {
      node.object = object;
      return;
    }
    prevNode = node;
    node = node.next;
  }
  prevNode.next = [[HashNode alloc] init:object withKey:key withNext:nil];
}

- (id)objectForKey:(NSString *)key {                    // added after testObjectNonNilAfterInitialGet
  //return [[NSObject alloc] init];                     // added after testObjectNonNilAfterInitialGet
  //return self.hashNodes[0];                           // added after testObjectEqualToInitialSetObject
  //return self.hashNodes[[HashTable hashValue:key]];   // added after testObjectEqualToSetObjectWithSameKey
  
  // added after testObjectNilIfNeverAdded
  //id object = self.hashNodes[[HashTable hashValue:key]];
  //if ([object isEqual:[NSNull null]]) {
  //  return nil;
  //}
  //return object;
  
  // added after testObjectStillRetrievableAfterCollision
  HashNode *node = self.hashNodes[[HashTable hashValue:key]];
  if ([node isEqual:[NSNull null]]) {
    return nil;
  }
  while (node) {
    if ([node.key isEqualToString:key]) {
      return node.object;
    }
    node = node.next;
  }
  return nil;
}

// added after testObjectEqualToSetObjectWithSameKey
+ (NSUInteger)hashValue:(NSString *)key {
  return [key hash] % kAllocationSize;
}

@end
