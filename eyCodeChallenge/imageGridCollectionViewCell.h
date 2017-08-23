//
//  imageGridCollectionViewCell.h
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImageObject;

@interface imageGridCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
    
@property (strong, nonatomic)ImageObject *imageURL;

+(NSString *)cellIdentifier;

-(void)setup:(ImageObject *)object;

+(void)registerForCollectionView:(UICollectionView *)collectionview;

@end
