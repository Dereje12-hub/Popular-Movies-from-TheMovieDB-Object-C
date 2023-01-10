//
//  ImageCach.h
//  Object-C-TheMovieDB
//
//  Created by Consultant on 1/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageCache : NSObject

@property (nonatomic, retain) NSCache *cache;

+ (id)sharedManager;

@end

NS_ASSUME_NONNULL_END
