//
//  MovieCollectionViewCell.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//


#import <UIKit/UIKit.h>
#import "CustomImageView.h"
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (nonatomic) Movie *movie;

@property (weak, nonatomic) IBOutlet CustomImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitle;
@property (weak, nonatomic) IBOutlet UILabel *movieOverview;
@property (weak, nonatomic) IBOutlet UILabel *movieRate;
@property (weak, nonatomic) IBOutlet UIImageView *movieStar;


@end

NS_ASSUME_NONNULL_END
