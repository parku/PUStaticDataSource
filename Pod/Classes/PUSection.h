//
//  PUSection.h
//  Pods
//
//  Created by Danilo Braband on 06.02.16.
//
//

@import Foundation;

@class PURow;

@interface PUSection : NSObject

@property (nonatomic) NSString *header;
@property (nonatomic) NSArray <PURow *>*rows;
@property (nonatomic) NSString *footer;

+ (PUSection *)sectionWithRows:(NSArray <PURow *>*)rows;
+ (PUSection *)sectionWithRows:(NSArray<PURow *> *)rows
                        header:(NSString *)header;
+ (PUSection *)sectionWithRows:(NSArray<PURow *> *)rows
                        footer:(NSString *)footer;
+ (PUSection *)sectionWithRows:(NSArray<PURow *> *)rows
                        header:(NSString *)header
                        footer:(NSString *)footer;

@end
