//
//  PUDataSource.m
//  Pods
//
//  Created by Danilo Braband on 06.02.16.
//
//

#import "PUDataSource.h"
#import "PUSection.h"
#import "PURow.h"
#import "PUCell.h"

@interface PUDataSource ()
@property (nonatomic) NSArray<PUSection *> *sections;
@end

@implementation PUDataSource

+ (PUDataSource *)dataSourceWithSections:(NSArray<PUSection *> *)sections
{
    PUDataSource *dataSource = [[PUDataSource alloc] init];
    dataSource.sections = sections;

    return dataSource;
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.sections[section].rows.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PURow *row = self.sections[indexPath.section].rows[indexPath.row];
    UITableViewCell <PUCell>*cell = [tableView dequeueReusableCellWithIdentifier:row.reuseIdentifier forIndexPath:indexPath];

    [cell updateWithItem:row.item];

    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return self.sections[section].header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return self.sections[section].footer;
}


@end
