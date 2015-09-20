//
//  HashNode.m
//  DataStructures
//
//  Copyright © 2015 CF. All rights reserved.
//

#import "HashNode.h"

@implementation HashNode

// added after testObjectStillRetrievableAfterCollision
- (instancetype)init:(id)object withKey:(NSString *)key withNext:(HashNode *)next {
    self = [super init];
    if (self) {
      _object = object;
      _key = key;
      _next = next;
    }
    return self;
}
@end
