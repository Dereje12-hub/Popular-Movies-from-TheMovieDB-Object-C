//
//  MovieDetailVC.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//



#import <UIKit/UIKit.h>
#import "Movie.h"
#import "CustomImageView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieDetailVC : UIViewController


@property NSNumber *movieID;
@property Movie *movie;

@property (weak, nonatomic) IBOutlet CustomImageView *movieDetailImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieGenreLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieVoteAverageLabel;
@property (weak, nonatomic) IBOutlet UITextView *movieOverviewTextView;
@property (weak, nonatomic) IBOutlet UIImageView *voteAverageImage;
@property (weak, nonatomic) IBOutlet UILabel *overviewLabel;

@end

NS_ASSUME_NONNULL_END
