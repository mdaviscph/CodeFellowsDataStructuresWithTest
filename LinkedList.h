//
//  LinkedList.h
//  DataStructures
//
//  Copyright (c) 2015 CF. All rights reserved.
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
