//
//  PUSection.m
//  Pods
//
//  Created by Danilo Braband on 06.02.16.
//
//

#import "PUSection.h"

@implementation PUSection

+ (PUSection *)sectionWithRows:(NSArray<PURow *> *)rows
{
    return [PUSection sectionWithRows:rows header:nil footer:nil];
}

+ (PUSection *)sectionWithRows:(NSArray<PURow *> *)rows
                        header:(NSString *)header
{
    return [PUSection sectionWithRows:rows header:header footer:nil];
}

+ (PUSection *)sectionWithRows:(NSArray<PURow *> *)rows
                        footer:(NSString *)footer
{
    return [PUSection sectionWithRows:rows header:nil footer:footer];
}

+ (PUSection *)sectionWithRows:(NSArray<PURow *> *)rows
                        header:(NSString *)header
                        footer:(NSString *)footer
{
    PUSection *section = [[PUSection alloc] init];
    section.rows = rows;
    section.header = header;
    section.footer = footer;

    return section;
}

@end
