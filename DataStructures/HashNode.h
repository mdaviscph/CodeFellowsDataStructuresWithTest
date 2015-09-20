//
//  HashNode.h
//  DataStructures
//
//  Copyright © 2015 CF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashNode : NSObject

@property (strong, nonatomic) id object;          // added after testObjectStillRetrievableAfterCollision
@property (strong, nonatomic) HashNode *next;     // added after testObjectStillRetrievableAfterCollision
@property (strong, nonatomic) NSString *key;      // added after testObjectStillRetrievableAfterCollision

// added after testObjectStillRetrievableAfterCollision
- (instancetype)init:(id)object withKey:(NSString *)key withNext:(HashNode *)next;

@end
