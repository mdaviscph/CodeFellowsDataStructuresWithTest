//
//  HashNode.m
//  DataStructures
//
//  Created by mike davis on 9/20/15.
//  Copyright © 2015 mike davis. All rights reserved.
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
