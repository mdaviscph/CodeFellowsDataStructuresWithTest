//
//  NodeLinkedList.m
//  DataStructures
//
//  Created by mike davis on 9/6/15.
//  Copyright (c) 2015 mike davis. All rights reserved.
//

#import "LinkedList.h"
#import "ListNode.h"

@implementation LinkedList

- (void) insertInSortedOrder: (ListNode *)node {
  ListNode *next = self.head;
  ListNode *prev = nil;
  while (next && next.data < node.data) {
    prev = next;
    next = next.next;
  }
  if (prev) {
    prev.next = node;
    node.next = next;
  } else {
    self.head = node;
    node.next = next;
  }
}

- (void) removeAll {
  ListNode *next = self.head;
  while (next) {
    ListNode *this = next;
    next = next.next;
    this.next = nil;
  }
  self.head = nil;
}

- (void) removeMatching: (NSNumber *)data {
  ListNode *next = self.head;
  ListNode *prev = nil;
  while (next && next.data != data) {
    prev = next;
    next = next.next;
  }
  if (next && prev) {
    prev.next = next.next;
  } else if (next) {
    self.head = next.next;
  }
}

- (void) nslogEmAll {
  ListNode *next = self.head;
  NSString *output = @"";
  while (next) {
    output = [output stringByAppendingString: [NSString stringWithFormat: @"%@, ", next.data]];
    next = next.next;
  }
  NSLog(@"linked list: %@", output);
}

@end
