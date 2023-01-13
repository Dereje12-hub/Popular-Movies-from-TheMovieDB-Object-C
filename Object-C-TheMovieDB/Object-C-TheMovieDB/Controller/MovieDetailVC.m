//
//  MovieDetailVC.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import "MovieDetailVC.h"
#import "Service.h"

@interface MovieDetailVC ()

@end

@implementation MovieDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //he
        [Service fetchMovieDetails:_movieID completion:^(Movie * movie) {
            self.movie = movie;

            dispatch_async(dispatch_get_main_queue(), ^{

                self.movieTitleLabel.text = self.movie.title;
                self.movieGenreLabel.text = self.movie.genres;

                self.voteAverageImage.hidden = false;
                self.movieVoteAverageLabel.hidden = false;
                self.overviewLabel.hidden = false;

                self.movieVoteAverageLabel.text = [NSString stringWithFormat:@"%.01f", self.movie.vote_avegare.doubleValue];
                self.movieOverviewTextView.text = self.movie.overview;

                [self.movieDetailImage loadImageWithStringURL: self.movie.imageURL];
                self.movieDetailImage.layer.cornerRadius = 10;
            });
        }];

}



@end
