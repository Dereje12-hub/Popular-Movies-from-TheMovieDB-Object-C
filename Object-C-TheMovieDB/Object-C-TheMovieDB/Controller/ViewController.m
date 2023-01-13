//
//  ViewController.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import "Movie.h"
#import "Service.h"
#import "TableViewCell.h"
#import "MovieDetailVC.h"
#import <QuartzCore/QuartzCore.h>
#import "CustomImageView.h"
#import "ImageCache.h"

@interface ViewController ()
 
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   [self setupNavigationBar];

    _movies_mainTableView.dataSource = self;
    _movies_mainTableView.delegate = self;
    
    dispatch_group_t group = dispatch_group_create();
    
    dispatch_group_enter(group);

    [Service fetchMovies:POPULAR completion:^(NSMutableArray * movies) {
        
        // Sort by vote 
        self.popularMovies = [self sortMovieArrayByVoteAverage: movies];
        
        // Get just all popular movies
        self.filtedPopularArray = [self->_popularMovies subarrayWithRange: NSMakeRange (0, self->_popularMovies.count)];
        dispatch_group_leave(group);
    }];
    
}


- (void)setupNavigationBar {
    
    self.navigationItem.title = @"Movies";
    
    UITableView* table = [[UITableView alloc] init];
    table.translatesAutoresizingMaskIntoConstraints = false;

    dispatch_async(dispatch_get_main_queue(), ^{
        [self.movies_mainTableView reloadData];
    });
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(NSNumber *)sender {
    
    if ([[segue identifier] isEqualToString:@"movieDetailSegue"]) {
        MovieDetailVC *movieDetailsViewController = [segue destinationViewController];
        movieDetailsViewController.movieID = sender;
    }
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";

     TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

         cell.movie = _filtedPopularArray[indexPath.row];

//            dispatch_async(dispatch_get_main_queue(), ^{
//
//            });
    
    return cell;
}

- (NSArray *)sortMovieArrayByVoteAverage:(NSMutableArray<Movie *> *)movieArray {
    
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"vote_avegare" ascending:NO];
    
    NSArray *sortedArray = [movieArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    return sortedArray;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
        return self.filtedPopularArray.count;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
   
    if(_filtedPopularArray.count != 0){
            return @"Popular Movies";
        }
  
        return @"";
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}


- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    view.tintColor = [UIColor whiteColor];
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    [header.textLabel setTextColor:[UIColor blackColor]];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSNumber *movieID = NSNumber.new;
        movieID = _filtedPopularArray[indexPath.row].movieID;


    [self performSegueWithIdentifier:@"movieDetailSegue" sender: movieID];
}

@end

