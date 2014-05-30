//
//  JJGViewController.m
//  Game of Life
//
//  Created by Jeff Gayle on 5/29/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

#import "JJGViewController.h"
#import "LifeCollectionViewCell.h"

@interface JJGViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSMutableArray *arrayOfCells;

@end

@implementation JJGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _arrayOfCells = [NSMutableArray new];
    LifeCollectionViewCell *cell = [[LifeCollectionViewCell alloc]init];
    for (int i = 0; i < 100; i ++) {
        cell.flipped = NO;
        [_arrayOfCells addObject:cell];
    }
    
    
}

- (BOOL)checkForLife: (NSIndexPath *)indexPath
{
    NSInteger neighbors = 0;
    
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row - 11)] flipped] ) {
        neighbors++;
    }
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row - 10)] flipped] ) {
        neighbors++;
    }
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row - 9)] flipped] ) {
        neighbors++;
    }
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row - 1)] flipped] ) {
        neighbors++;
    }
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row + 1)] flipped] ) {
        neighbors++;
    }
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row + 9)] flipped] ) {
        neighbors++;
    }
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row + 10)] flipped] ) {
        neighbors++;
    }
    if ( [[_arrayOfCells objectAtIndex:(indexPath.row + 11)] flipped] ) {
        neighbors++;
    }
    
    if (neighbors < 2 || neighbors >= 4) {
        return NO;
    } else {
        return YES;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LifeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.flipped = YES;
    
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _arrayOfCells.count;
}

@end
