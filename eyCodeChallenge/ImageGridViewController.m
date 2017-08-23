//
//  ImageGridViewController.m
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "ImageGridViewController.h"
#import "ImageObject.h"
#import "ApiNetworkingManager.h"
#import "imageGridCollectionViewCell.h"

@interface ImageGridViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong)NSArray *images;

@end

@implementation ImageGridViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self fetchImages];
}


- (void)fetchImages {
    
    ApiNetworkingManager *manager = [ApiNetworkingManager new];
    
    [manager fetchImageWithSuccess:^(id response) {
        
        self.images = response;
        
        [self.collectionView reloadData];
        
    } failure:^(NSError *thError) {
        
    }];
}

#pragma mark - Collection View

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.images.count;
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
    
}


- (imageGridCollectionViewCell  *)imageGridCell:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath {
    
    imageGridCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[imageGridCollectionViewCell cellIdentifier] forIndexPath:indexPath];
    
    [cell setup:self.images[indexPath.row]];
    
    return cell;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return [self imageGridCell:collectionView forIndexPath:indexPath];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}
@end
