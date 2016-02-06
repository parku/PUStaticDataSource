//
//  UITableViewCell+PUActionHero.m
//  PUStaticDataSource
//
//  Created by Danilo Braband on 06.02.16.
//  Copyright © 2016 Danilo. All rights reserved.
//

#import "UITableViewCell+PUActionHero.h"
#import "PUActionHero.h"

@implementation UITableViewCell (PUActionHero)

- (void)updateWithItem:(id)item
{
    PUActionHero *hero = (PUActionHero *)item;

    self.textLabel.text = hero.name;
}

@end
