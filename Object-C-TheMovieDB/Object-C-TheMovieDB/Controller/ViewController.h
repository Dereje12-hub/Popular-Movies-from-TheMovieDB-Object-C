//
//  ViewController.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//
#import <UIKit/UIKit.h>
#import "Movie.h"
#import "Service.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *movies_mainTableView;

@property NSArray<Movie *> *popularMovies;

@property NSArray<Movie *> *filtedPopularArray;

-(void) setupNavigationBar;

- (NSArray *) sortMovieArrayByVoteAverage:(NSMutableArray<Movie *> *)movieArray;


@end
