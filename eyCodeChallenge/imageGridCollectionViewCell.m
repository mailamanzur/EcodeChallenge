//
//  imageGridCollectionViewCell.m
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "imageGridCollectionViewCell.h"
#import "ImageObject.h"
#import "UIImageView+Utils.h"

@implementation imageGridCollectionViewCell

+(NSString *)cellIdentifier {
    NSString *identifier = NSStringFromClass(self.class);
    return identifier;
}

-(void)setup:(ImageObject *)object {
    
    self.imageURL = object;
    
    [self.imageView setImageFromURL:[NSURL URLWithString:[object setImageURLForSize:Thumbnail]]];
    
}

+(void)registerForCollectionView:(UICollectionView *)collectionview {
    NSString *identifier = NSStringFromClass(self.class);
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    [collectionview registerNib:nib forCellWithReuseIdentifier:identifier];
    
}




@end
