//
//  Parser.h
//  week4
//
//  Created by Desire Gardner on 5/30/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataObject.h"

@interface Parser : NSObject <NSXMLParserDelegate>

@property (strong, readonly) NSMutableArray *tweets;

-(id) loadXMLByURL:(NSString *)urlString;

@end