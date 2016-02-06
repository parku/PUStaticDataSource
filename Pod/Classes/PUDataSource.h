//
//  PUDataSource.h
//  Pods
//
//  Created by Danilo Braband on 06.02.16.
//
//

@import UIKit;

@class PUSection;

@interface PUDataSource : NSObject <UITableViewDataSource>

+ (PUDataSource *)dataSourceWithSections:(NSArray<PUSection *> *)sections;

@end
