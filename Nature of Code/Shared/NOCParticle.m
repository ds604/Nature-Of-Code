//
//  NOCParticle.m
//  Nature of Code
//
//  Created by William Lindmeier on 2/6/13.
//  Copyright (c) 2013 wdlindmeier. All rights reserved.
//

#import "NOCParticle.h"

@implementation NOCParticle

- (id)initWithSize:(CGSize)size position:(GLKVector2)position
{
    self = [super init];
    if(self){
        self.size = size;
        self.position = position;
    }
    return self;
}


- (GLKMatrix4)modelMatrix
{
    GLKMatrix4 modelMat = GLKMatrix4Identity;
    
    float scaleX = self.size.width;
    float scaleY = self.size.height;
    
    // NOTE:
    // This assumes the model geometry is on a 1.0 unit scale
    
    modelMat = GLKMatrix4Scale(modelMat,
                               scaleX,
                               scaleY,
                               1.0);
    
    modelMat = GLKMatrix4Translate(modelMat,
                                   self.position.x / scaleX,
                                   self.position.y / scaleY,
                                   1.0);
    
    return modelMat;
}

- (void)render
{
    // Override in subclass
}

@end
