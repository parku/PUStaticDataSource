//
//  PUActionHero.m
//  PUStaticDataSource
//
//  Created by Danilo Braband on 06.02.16.
//  Copyright © 2016 Danilo. All rights reserved.
//

#import "PUActionHero.h"

@implementation PUActionHero

+ (PUActionHero *)heroWithName:(NSString *)name
{
    PUActionHero *hero = [[PUActionHero alloc] init];
    hero.name = name;

    return hero;
}

@end
