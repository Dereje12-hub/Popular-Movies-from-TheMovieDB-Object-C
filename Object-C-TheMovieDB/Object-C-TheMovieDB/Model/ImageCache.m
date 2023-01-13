//
//  ImageCach.m
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import "ImageCache.h"

@implementation ImageCache

@synthesize cache;

+ (id)sharedManager {
    static ImageCache *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        cache = [[NSCache alloc] init];
    }
    return self;
}


@end
