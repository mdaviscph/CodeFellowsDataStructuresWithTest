//
//  ListNode.h
//  DataStructures
//
//  Copyright (c) 2015 CF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode: NSObject

@property (strong, nonatomic) ListNode *next;
@property (strong, nonatomic) NSNumber *data;

- (instancetype) initWith: (NSNumber *)data;

@end
