//
//  PURow.m
//  Pods
//
//  Created by Danilo Braband on 06.02.16.
//
//

#import "PURow.h"

@implementation PURow

+ (PURow *)rowWithItem:(id)item reuseIdentifier:(NSString *)identifier
{
    PURow *row = [[PURow alloc] init];
    row.item = item;
    row.reuseIdentifier = identifier;

    return row;
}

@end
