//
//  PUActionHero.h
//  PUStaticDataSource
//
//  Created by Danilo Braband on 06.02.16.
//  Copyright © 2016 Danilo. All rights reserved.
//

@import Foundation;

@interface PUActionHero : NSObject
@property (nonatomic) NSString *name;

+ (PUActionHero *)heroWithName:(NSString *)name;
@end
