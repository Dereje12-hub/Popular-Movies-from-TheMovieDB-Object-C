//
//  TableViewCell.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/12/23.
//

#import "TableViewCell.h"

@implementation TableViewCell


- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setMovie:(Movie *)movie {

    self.movieTitle.text = movie.title;
    self.movieOverview.text = movie.overview;
    self.movieImage.layer.cornerRadius = 10;
    self.movieRate.text = [NSString stringWithFormat:@"%.01f", movie.vote_avegare.doubleValue];
    [self.movieImage loadImageWithStringURL: movie.imageURL];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
