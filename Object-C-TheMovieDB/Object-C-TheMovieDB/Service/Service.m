//
//  Service.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import "Service.h"
#import <Foundation/Foundation.h>
#import "Movie.h"
#import "NSArray+GenreCategory.h"
#import <UIKit/UIKit.h>
#import "Parser.h"


@implementation Service


static NSString *urlStringFormat = @"https://api.themoviedb.org/3/movie/552?api_key=0ee1084524aebea4467b2469f4cec50b&language=en-US&query=%@";

static NSString *const API_key = @"0ee1084524aebea4467b2469f4cec50b";
static NSString *const urlBase = @"https://api.themoviedb.org/3/movie/";

+ (void) fetchMovieDetails:(NSNumber* )movieId completion:(void (^)(Movie*))callback {
    
    
    NSString *urlString = [NSString stringWithFormat: @"%@%@?api_key=%@", urlBase,  movieId, API_key];
    NSURL *url = [NSURL URLWithString: urlString];
    
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            NSLog(@"Request_error: %@", error);
            return;
        }
        
        NSError *err;
        
        NSDictionary *movieJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        
        if (error) {
            NSLog(@"JSON_Serialization_Error: %@", error);
            return;
        }
        
        @try {
            Movie *resultMovie = [Parser parseMovie: movieJSON];
            callback(resultMovie);
            //NSLog(@"The resultMovie: %@",resultMovie);
            
        }@catch ( NSException *e ) {
            NSLog(@"JSON_Parse_error: %@", e);
            return;
        }
        
        
    }] resume];
    
    
}



+ (void) fetchMovies:(moviesCategory)moviesCategory completion: (void (^)(NSMutableArray*))callback {
    
    NSString *movies_GET_URL = [NSString alloc];
    
    if (moviesCategory == POPULAR) {
        movies_GET_URL = @"https://api.themoviedb.org/3/movie/popular";
    }

    
    NSString *urlString = [NSString stringWithFormat: @"%@?api_key=%@", movies_GET_URL, API_key];
    NSURL *url = [NSURL URLWithString: urlString];
    
    
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            NSLog(@"Request_error: %@", error);
            return;
        }
        
        NSError *err;
        NSDictionary *moviesJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        
        if (error) {
            NSLog(@"JSON_Serialization_Error: %@", error);
            return;
        }
        
        @try {
            NSMutableArray<Movie *> *movies = [Parser parseMovies:moviesJSON];
            callback(movies);
            NSLog(@"The search: %@",movies);
        }
        
        @catch ( NSException *e ) {
            NSLog(@"JSON_Parse_error: %@", e);
            return;
        }
        
        
    }] resume];
    
}

+ (void)fetchImageData:(NSString*) imageURL completion:(void (^)(UIImage *))callback {
    
    NSURL *imgURL = [NSURL URLWithString: imageURL];
    
    [[NSURLSession.sharedSession dataTaskWithURL:(imgURL) completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (!error) {
            UIImage *returnImage = [[UIImage alloc] initWithData:data];
            
            callback(returnImage);
        }else{
            NSLog(@"IMAGE_FETCH_ERROR: %@",error);
        }
    }] resume] ;
    
}


@end
