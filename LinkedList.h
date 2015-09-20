//
//  LinkedList.h
//  DataStructures
//
//  Created by mike davis on 9/6/15.
//  Copyright (c) 2015 mike davis. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ListNode;

@interface LinkedList: NSObject

@property (strong, nonatomic) ListNode *head;

- (void) insertInSortedOrder: (ListNode *)node;
- (void) removeAll;
- (void) removeMatching: (NSNumber *)data;
- (void) nslogEmAll;

@end
