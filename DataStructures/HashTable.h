//
//  HashTable.h
//  DataStructures
//
//  Created by mike davis on 9/20/15.
//  Copyright © 2015 mike davis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashTable : NSObject

@property (nonatomic) NSUInteger count;   // added after testCountIsZeroAfterInit

- (void)setObject:(id)object forKey:(NSObject *)key;  // added after testCountIsOneAfterInitialSet
- (id)objectForKey:(NSObject *)key;                 // added after testObjectNonNilAfterInitialGet

@end