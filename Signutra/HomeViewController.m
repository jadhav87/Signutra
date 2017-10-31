//
//  HomeViewController.m
//  Signutra
//
//  Created by vikas on 25/09/17.
//  Copyright © 2017 vikas. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
{
    Boolean isDragWithDrop;
    CGRect startPosition;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.drag1View;
//    self.drag2View;
//    self.drag3View;
//    self.drag4View;
//    self.drag5View;
//    self.drag6View;
//    self.drag7View;
//    self.drag8View;
//    self.drag9View;
//    self.drag10View;
//    self.drag11View;
//    self.drag12View;
//    self.drag13View;
//    self.drag14View;
//    self.drag15View;
//    self.drag16View;
//    self.drag17View;
//    self.drag18View;
//    self.drag19View;
//    self.drag20View;
//    self.drag21View;
//    self.drag22View;
//    self.drag23View;
//    self.drag24View;
//    self.drag25View;
//    self.drag26View;
//    self.drag27View;
//    self.drag28View;
//    self.drag29View;
//    self.drag30View;
    
//    //View 1 - draggable, returns to original position
//    [self.drag1View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View] delegate:self];
//
    isDragWithDrop = NO;
    startPosition = self.drop1View.frame;
    //view 2 - draggable, does not return to original position
//    [self.drag1View makeDraggable];
    [self.drag1View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag2View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag3View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag4View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag5View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag6View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag7View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag8View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag9View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
    [self.drag10View makeDraggableWithDropViews:@[self.drop1View,self.drop2View,self.drop3View,self.drop4View,self.drop5View,self.drop6View] delegate:self];
//
//    //view 3 - draggable on y axis only
//    [self.dragView3 makeDraggableWithDropViews:@[self.dropView] delegate:self];
//    [self.dragView3 setDragMode:UIViewDragDropModeRestrictY];
//    
//    //view 3 - draggable on x axis only
//    [self.dragView4 makeDraggableWithDropViews:@[self.dropView] delegate:self];
//    [self.dragView4 setDragMode:UIViewDragDropModeRestrictX];
}

#pragma mark - UIViewDragDropDelegate

- (void) view:(UIView *)view wasDroppedOnDropView:(UIView *)drop
{
    isDragWithDrop = YES;
    
//    if (view.tag == 1) {
//        if (drop.tag == 1) {
//            view.frame = drop.frame;
//        }
//    }else if (view.tag == 2){
//        if(drop.tag == 2){
//            view.frame = drop.frame;
//            UIImageView *img = view.subviews[0];
//            img.image = [UIImage imageNamed:@"orange_cut.jpg"];
////            uii view.subviews[0]
//        }
//    }
//    view.frame = drop.frame;
    
    NSLog(@"wasDroppedOnDropView: %ld",(long)drop.tag);
//    NSLog(@"View: %ld",(long)view.tag);
    
//    self.dragView1.userInteractionEnabled = NO;
//    self.dragView2.userInteractionEnabled = NO;
    
}

- (BOOL) viewShouldReturnToStartingPosition:(UIView*)view
{
    NSLog(@"viewShouldReturnToStartingPosition : %ld",(long)view.tag);
    
//    if (isDragWithoutDrop) {
//        NSLog(@"isDragWithoutDrop");
//        return NO;
//    }else{
//        NSLog(@"isDragWithDrop");
//        return YES;
//    }
    startPosition = view.frame;
    
    if (view == self.drag1View) return NO;
    if (view == self.drag2View) return NO;
    if (view == self.drag3View) return NO;
    
    return NO;
}


- (void) draggingDidBeginForView:(UIView*)view
{
//    NSLog(@"draggingDidBeginForView : %ld",(long)view.tag);
    [self.baseView addSubview:view];
    
}

- (void) draggingDidEndWithoutDropForView:(UIView*)view
{
    
    view.frame = startPosition;
//    if (!isDragWithDrop) {
//        isDragWithDrop = NO;
//        if (view.tag == 1) {
//            self.drag1View.frame = CGRectMake(61, 24, view.frame.size.width, view.frame.size.height);
//        }else if(view.tag == 2){
//            self.drag2View.frame = CGRectMake(61, 24, view.frame.size.width, view.frame.size.height);
//        }
//        
        NSLog(@"draggingDidEndWithoutDropForView : %ld",(long)view.tag);
//    }
    //    NSString *msg = [NSString stringWithFormat:@"Dragging ended without drop for %@", [view.subviews[0] text]];
    //    [self updateDisplayLabel:msg];
}

- (void) view:(UIView *)view didHoverOverDropView:(UIView *)dropView
{
//    NSLog(@"didHoverOverDropView drag: %ld drop: %ld",(long)view.tag,(long)dropView.tag);
    //    NSString *msg = [NSString stringWithFormat:@"%@ hovered over %@", [view.subviews[0] text], [dropView.subviews[0] text]];
    //
    //    [self updateDisplayLabel:msg];
}

- (void) view:(UIView *)view img:(UIView *)dropView
{
//    NSLog(@"didUnhoverOverDropView drag: %ld drop: %ld",(long)view.tag,(long)dropView.tag);
    //    NSString *msg = [NSString stringWithFormat:@"%@ unhovered over %@", [view.subviews[0] text], [dropView.subviews[0] text]];
    //    [self updateDisplayLabel:msg];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
