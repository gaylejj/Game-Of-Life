//
//  LifeCollectionViewCell.m
//  Game of Life
//
//  Created by Jeff Gayle on 5/29/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

#import "LifeCollectionViewCell.h"

@implementation LifeCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setFlipped:(BOOL)flipped
{
    if (_flipped != flipped) {
        _flipped = flipped;
        if (_flipped) {
            _cellView.backgroundColor = [UIColor greenColor];
        } else {
            _cellView.backgroundColor = [UIColor whiteColor];
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
