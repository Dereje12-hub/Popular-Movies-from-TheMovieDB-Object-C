//
//  MovieCollectionViewCell.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import <UIKit/UIKit.h>
#import "CustomImageView.h"
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet CustomImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitle;
@property (weak, nonatomic) IBOutlet UILabel *movieVoteAverage;

@property (nonatomic) Movie *movie;

@end

NS_ASSUME_NONNULL_END
