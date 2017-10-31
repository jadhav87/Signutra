//
//  ViewController.m
//  Signutra
//
//  Created by vikas on 22/09/17.
//  Copyright © 2017 vikas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGRect frame1,frame2,frame3,frame4,frame5,frame6,frame7,frame8,frame9,frame10,frame11,frame12,frame13,frame14,frame15,frame16,frame17,frame18,frame19,frame20,frame21,frame22,frame23,frame24,frame25,frame26,frame27,frame28,frame29,frame30,frame31,frame32,frame33;
    NSInteger lasTag;
}
@property (nonatomic, strong) CHTStickerView *selectedView;

//@property (nonatomic, strong) CHTStickerView *stickerViewOnion;
//@property (nonatomic, strong) CHTStickerView *stickerViewApple;
//@property (nonatomic, strong) CHTStickerView *stickerViewMango;
//
//@property (nonatomic, strong) CHTStickerView *stickerView1;
//@property (nonatomic, strong) CHTStickerView *stickerView2;
//@property (nonatomic, strong) CHTStickerView *stickerView3;
@end

@implementation ViewController 


- (void)setSelectedView:(CHTStickerView *)selectedView {
    if (_selectedView != selectedView) {
        if (_selectedView) {
            _selectedView.showEditingHandlers = NO;
        }
        _selectedView = selectedView;
        if (_selectedView) {
            _selectedView.showEditingHandlers = YES;
            [_selectedView.superview bringSubviewToFront:_selectedView];
        }
    }
}



- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    lasTag = 33;
    [self setFrames];
    [self setView];
    
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    [self.view addGestureRecognizer:singleFingerTap];
    
}

-(void)setFrames{
    
    frame1 = self.imgView1.frame;
    frame2 = self.imgView2.frame;
    frame3 = self.imgView3.frame;
    frame4 = self.imgView4.frame;
    frame5 = self.imgView5.frame;
    frame6 = self.imgView6.frame;
    frame7 = self.imgView7.frame;
    frame8 = self.imgView8.frame;
    frame9 = self.imgView9.frame;
    frame10 = self.imgView10.frame;
    frame11 = self.imgView11.frame;
    frame12 = self.imgView12.frame;
    frame13 = self.imgView13.frame;
    frame14 = self.imgView14.frame;
    frame15 = self.imgView15.frame;
    frame16 = self.imgView16.frame;
    frame17 = self.imgView17.frame;
    frame18 = self.imgView18.frame;
    frame19 = self.imgView19.frame;
    frame20 = self.imgView20.frame;
    frame21 = self.imgView21.frame;
    frame22 = self.imgView22.frame;
    frame23 = self.imgView23.frame;
    frame24 = self.imgView24.frame;
    frame25 = self.imgView25.frame;
    frame26 = self.imgView26.frame;
    frame27 = self.imgView27.frame;
    frame28 = self.imgView28.frame;
    frame29 = self.imgView29.frame;
    frame30 = self.imgView30.frame;
    
    frame31 = self.dragview1.frame;
    frame32 = self.dragview2.frame;
    frame33 = self.dragview3.frame;
    
//    frame1 = CGRectMake(224, 49, 41, 41);
//    frame2 = CGRectMake(273, 49, 41, 41);
//    frame3 = CGRectMake(322, 49, 41, 41);
//    frame4 = CGRectMake(371, 49, 41, 41);
//    frame5 = CGRectMake(420, 49, 41, 41);
//    frame6 = CGRectMake(469, 49, 41, 41);
//    frame7 = CGRectMake(518, 49, 41, 41);
//    frame8 = CGRectMake(567, 49, 41, 41);
//    frame9 = CGRectMake(616, 49, 41, 41);
//    frame10 = CGRectMake(665, 49, 41, 41);
//    frame11 = CGRectMake(714, 49, 41, 41);
//    frame12 = CGRectMake(763, 49, 41, 41);
//    frame13 = CGRectMake(812, 49, 41, 41);
//    frame14 = CGRectMake(861, 49, 41, 41);
//    frame15 = CGRectMake(910, 49, 41, 41);
//    frame16 = CGRectMake(74, 98, 41, 41);
//    frame17 = CGRectMake(126, 98, 41, 41);
//    frame18 = CGRectMake(175, 98, 41, 41);
//    frame19 = CGRectMake(224, 98, 41, 41);
//    frame20 = CGRectMake(273, 98, 41, 41);
//    frame21 = CGRectMake(322, 98, 41, 41);
//    frame22 = CGRectMake(371, 98, 41, 41);
//    frame23 = CGRectMake(420, 98, 41, 41);
//    frame24 = CGRectMake(469, 98, 41, 41);
//    frame25 = CGRectMake(518, 98, 41, 41);
//    frame26 = CGRectMake(567, 98, 41, 41);
//    frame27 = CGRectMake(616, 98, 41, 41);
//    frame28 = CGRectMake(665, 98, 41, 41);
//    frame29 = CGRectMake(714, 98, 41, 41);
//    frame30 = CGRectMake(763, 98, 41, 41);
//    
//    frame31 = CGRectMake(74, 49, 41, 41);
//    frame32 = CGRectMake(126, 49, 41, 41);
//    frame33 = CGRectMake(175, 49, 41, 41);


}
-(void)setView{
    
    [self setDragable:self.dragview1 forImg:self.appleImg forFrame:frame31 setTag:31];
    [self setDragable:self.dragview2 forImg:self.onionImg forFrame:frame32 setTag:32];
    [self setDragable:self.dragview3 forImg:self.mangoImg forFrame:frame33 setTag:33];
    
    [self setDragable:self.imgView1 forImg:self.img1 forFrame:frame1 setTag:1];
    [self setDragable:self.imgView2 forImg:self.img2 forFrame:frame2 setTag:2];
    [self setDragable:self.imgView3 forImg:self.img3 forFrame:frame3 setTag:3];
    [self setDragable:self.imgView4 forImg:self.img4 forFrame:frame4 setTag:4];
    [self setDragable:self.imgView5 forImg:self.img5 forFrame:frame5 setTag:5];
    [self setDragable:self.imgView6 forImg:self.img6 forFrame:frame6 setTag:6];
    [self setDragable:self.imgView7 forImg:self.img7 forFrame:frame7 setTag:7];
    [self setDragable:self.imgView8 forImg:self.img8 forFrame:frame8 setTag:8];
    [self setDragable:self.imgView9 forImg:self.img9 forFrame:frame9 setTag:9];
    [self setDragable:self.imgView10 forImg:self.img10 forFrame:frame10 setTag:10];
    [self setDragable:self.imgView11 forImg:self.img11 forFrame:frame11 setTag:11];
    [self setDragable:self.imgView12 forImg:self.img12 forFrame:frame12 setTag:12];
    [self setDragable:self.imgView13 forImg:self.img13 forFrame:frame13 setTag:13];
    [self setDragable:self.imgView14 forImg:self.img14 forFrame:frame14 setTag:14];
    [self setDragable:self.imgView15 forImg:self.img15 forFrame:frame15 setTag:15];
    [self setDragable:self.imgView16 forImg:self.img16 forFrame:frame16 setTag:16];
    [self setDragable:self.imgView17 forImg:self.img17 forFrame:frame17 setTag:17];
    [self setDragable:self.imgView18 forImg:self.img18 forFrame:frame18 setTag:18];
    [self setDragable:self.imgView19 forImg:self.img19 forFrame:frame19 setTag:19];
    [self setDragable:self.imgView20 forImg:self.img20 forFrame:frame20 setTag:20];
    [self setDragable:self.imgView21 forImg:self.img21 forFrame:frame21 setTag:21];
    [self setDragable:self.imgView22 forImg:self.img22 forFrame:frame22 setTag:22];
    [self setDragable:self.imgView23 forImg:self.img23 forFrame:frame23 setTag:23];
    [self setDragable:self.imgView24 forImg:self.img24 forFrame:frame24 setTag:24];
    [self setDragable:self.imgView25 forImg:self.img25 forFrame:frame25 setTag:25];
    [self setDragable:self.imgView26 forImg:self.img26 forFrame:frame26 setTag:26];
    [self setDragable:self.imgView27 forImg:self.img27 forFrame:frame27 setTag:27];
    [self setDragable:self.imgView28 forImg:self.img28 forFrame:frame28 setTag:28];
    [self setDragable:self.imgView29 forImg:self.img29 forFrame:frame29 setTag:29];
    [self setDragable:self.imgView30 forImg:self.img30 forFrame:frame30 setTag:30];

}
-(void)setDragable:(UIView *)view forImg:(UIImageView *)img forFrame:(CGRect)frame setTag:(NSInteger)index{
    
    view.backgroundColor = [UIColor clearColor];
    
    CHTStickerView *stickerView = [[CHTStickerView alloc] initWithContentView:view];
    stickerView.center = CGPointMake(frame.origin.x, frame.origin.y);
    stickerView.delegate = self;
    stickerView.enableClose = NO;
    stickerView.outlineBorderColor = [UIColor blueColor];
    [stickerView setHandlerSize:40];
    [self.view addSubview:stickerView];
    img.frame = view.frame;
    [stickerView addSubview:img];
    img.tag = index;
    
    stickerView.showEditingHandlers = NO;
    
    img.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    tapGesture.numberOfTapsRequired = 2;
    [img addGestureRecognizer:tapGesture];
}

- (void)handleTapGesture:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateRecognized) {
        
        // handling code
        UITapGestureRecognizer *tapRecognizer = (UITapGestureRecognizer *)sender;
        
        //-------------- copy UIImageView -------------------------------------------------------//
        UIImageView *originalImageView = (UIImageView *)[self.view viewWithTag:[tapRecognizer.view tag]];
        
        UIImageView *copyImageView = [[UIImageView alloc] initWithImage:originalImageView.image];
        
        copyImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth |
        UIViewAutoresizingFlexibleHeight;
        
        //--------------- copy UIView --------------------------------------------------------//
        UIView *view = (UIView *)[self.view viewWithTag:[tapRecognizer.view tag]];
        UIView *copyView = [[UIView alloc] initWithFrame:view.frame];
        
        [self setDragable:copyView forImg:copyImageView forFrame:CGRectMake(50, 80, 41, 41) setTag:lasTag+1];
        
        NSLog (@"Tag is : %ld",[tapRecognizer.view tag]);
        
        lasTag = lasTag+1;
        
//        [self.stickerViewOnion setImage:[UIImage imageNamed:@"Rotate"] forHandler:CHTStickerViewHandlerRotate];
//        [self.stickerViewOnion setImage:[UIImage imageNamed:@"Close"] forHandler:CHTStickerViewHandlerClose];
    }
}
- (void)stickerViewDidBeginMoving:(CHTStickerView *)stickerView {
    
    self.selectedView = stickerView;
    
//    [self addSubview:view];
//    NSLog(@"stickerViewDidBeginMoving");
    
    [stickerView setImage:[UIImage imageNamed:@"Rotate"] forHandler:CHTStickerViewHandlerRotate];
//    [stickerView setImage:[UIImage imageNamed:@"Close"] forHandler:CHTStickerViewHandlerClose];
    
    
}
- (void)stickerViewDidEndMoving:(CHTStickerView *)stickerView{
    NSLog(@"stickerViewDidBeginMoving fram : %f",stickerView.frame.origin.x);
}
- (void)stickerViewDidTap:(CHTStickerView *)stickerView {
    self.selectedView = stickerView;
    stickerView.showEditingHandlers = YES;
    NSLog(@"stickerViewDidTap");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
    self.selectedView.showEditingHandlers = NO;
//    CGPoint location = [recognizer locationInView:[recognizer.view superview]];
    
    //Do stuff here...
}

- (IBAction)resetAction:(id)sender {
  
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *myNewVC = (ViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:myNewVC animated:NO completion:nil];
}
@end
