//
//  MovieCollectionViewCell.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//


#import "MovieCollectionViewCell.h"

@implementation MovieCollectionViewCell


- (void)setMovie:(Movie *)movie {
    
    self.movieTitle.text = movie.title;
    self.movieImage.layer.cornerRadius = 10;
    self.movieVoteAverage.text = [NSString stringWithFormat:@"%.01f", movie.vote_avegare.doubleValue];
    [self.movieImage loadImageWithStringURL: movie.imageURL];
}

@end
