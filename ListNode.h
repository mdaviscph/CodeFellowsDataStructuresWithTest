//
//  ListNode.h
//  DataStructures
//
//  Created by mike davis on 9/6/15.
//  Copyright (c) 2015 mike davis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode: NSObject

@property (strong, nonatomic) ListNode *next;
@property (strong, nonatomic) NSNumber *data;

- (instancetype) initWith: (NSNumber *)data;

@end
