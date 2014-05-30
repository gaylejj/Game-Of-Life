//
//  LifeCollectionViewCell.h
//  Game of Life
//
//  Created by Jeff Gayle on 5/29/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LifeCollectionViewCell : UICollectionViewCell

//@property (nonatomic, getter = isFlipped) BOOL flipped;
@property (nonatomic) BOOL flipped;
@property (nonatomic, weak) IBOutlet UIView *cellView;

@end
