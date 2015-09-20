//
//  HashTable.h
//  DataStructures
//
//  Copyright © 2015 CF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashTable : NSObject

//@property (nonatomic) NSUInteger count;           // added after testCountIsZeroAfterInit
@property (readonly, nonatomic) NSUInteger count;   // added after testObjectEqualToSetObjectWithSameKey

- (void)setObject:(id)object forKey:(NSString *)key;  // added after testCountIsOneAfterInitialSet
- (id)objectForKey:(NSString *)key;                 // added after testObjectNonNilAfterInitialGet

@end
