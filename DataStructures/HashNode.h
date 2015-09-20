//
//  HashNode.h
//  DataStructures
//
//  Created by mike davis on 9/20/15.
//  Copyright © 2015 mike davis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashNode : NSObject

@property (strong, nonatomic) id object;          // added after testObjectStillRetrievableAfterCollision
@property (strong, nonatomic) HashNode *next;     // added after testObjectStillRetrievableAfterCollision
@property (strong, nonatomic) NSString *key;      // added after testObjectStillRetrievableAfterCollision

// added after testObjectStillRetrievableAfterCollision
- (instancetype)init:(id)object withKey:(NSString *)key withNext:(HashNode *)next;

@end
