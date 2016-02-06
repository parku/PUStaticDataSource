//
//  PURow.h
//  Pods
//
//  Created by Danilo Braband on 06.02.16.
//
//

@import Foundation;

@interface PURow : NSObject

@property (nonatomic) id item;
@property (nonatomic) NSString *reuseIdentifier;

+ (PURow *)rowWithItem:(id)item reuseIdentifier:(NSString *)identifier;

@end
