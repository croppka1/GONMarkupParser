//
//  GONMarkupParagrap.m
//  GONMarkupParserSample
//
//  Created by Nicolas Goutaland on 06/08/14.
//  Copyright (c) 2014 Nicolas Goutaland. All rights reserved.
//
// Markup to handle <p>. A blank line will be inserted after the paragraph end (\n\n)

#import "GONMarkupParagrap.h"

@implementation GONMarkupParagrap
#pragma mark - Constructor
+ (instancetype)paragraphMarkup
{
    return [self markupForTag:GONMarkupParagrap_TAG];
}

#pragma mark - Content update
- (NSAttributedString *)prefixStringForContext:(NSMutableDictionary *)context
                                    attributes:(NSDictionary *)dicAttributes
                              stringAttributes:(NSDictionary *)stringAttributes
                                  resultString:(NSAttributedString *)resultString
{
    if (resultString.string.length > 0 && [resultString.string characterAtIndex:resultString.string.length - 1] != '\n')
        return [[NSAttributedString alloc] initWithString:@"\n\n" attributes:stringAttributes];
    
    return [[NSAttributedString alloc] initWithString:@"" attributes:stringAttributes];
}

@end
