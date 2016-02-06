//
//  PUViewController.m
//  PUStaticDataSource
//
//  Created by Danilo on 02/06/2016.
//  Copyright (c) 2016 Danilo. All rights reserved.
//

#import "PUViewController.h"

#import <PUStaticDataSource/PUStaticDataSource.h>

#import "PUActionHero.h"

@interface PUViewController ()
@property (nonatomic) PUDataSource *dataSource;
@end

@implementation PUViewController

- (PUDataSource *)dataSource
{
    if (!_dataSource) {
        _dataSource = [PUDataSource dataSourceWithSections:@[
            [PUSection sectionWithRows:@[
                [PURow rowWithItem:[PUActionHero heroWithName:@"Bruce Wayne"] reuseIdentifier:@"identifier"],
                [PURow rowWithItem:[PUActionHero heroWithName:@"Clark Kent"] reuseIdentifier:@"identifier"],
                [PURow rowWithItem:[PUActionHero heroWithName:@"Peter Parker"] reuseIdentifier:@"identifier"],
                [PURow rowWithItem:[PUActionHero heroWithName:@"Tony Stark"] reuseIdentifier:@"identifier"],
            ] header:@"Action Heros"],
            [PUSection sectionWithRows:@[
                [PURow rowWithItem:[PUActionHero heroWithName:@"Harvey Dent"] reuseIdentifier:@"identifier"],
            ] header:@"Bad Guys"],
            // add other sections if you like
        ]];
    }

    return _dataSource;
}


- (instancetype)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        self.title = @"Example Table";
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"identifier"];

    self.tableView.dataSource = self.dataSource;
}

@end
