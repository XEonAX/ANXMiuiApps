.class public Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;
.super Ljava/lang/Object;
.source "nexOverlayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mask"
.end annotation


# static fields
.field public static final kSplit_Bottom:I = 0x4

.field public static final kSplit_Left:I = 0x1

.field public static final kSplit_LeftBottom:I = 0x7

.field public static final kSplit_LeftTop:I = 0x5

.field public static final kSplit_Right:I = 0x2

.field public static final kSplit_RightBottom:I = 0x8

.field public static final kSplit_RightTop:I = 0x6

.field public static final kSplit_Top:I = 0x3


# instance fields
.field private angle:I

.field private maskImage:Landroid/graphics/Bitmap;

.field private onOff:Z

.field private rectPosition:Landroid/graphics/Rect;

.field private splitMode:I

.field private syncAnimationOverlayItem:Z

.field final synthetic this$0:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

.field private vertical:Z


# direct methods
.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)V
    .locals 1

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->this$0:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;)Z
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->onOff:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;)Z
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->syncAnimationOverlayItem:Z

    return v0
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .prologue
    .line 2381
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->angle:I

    return v0
.end method

.method public getAnimateSyncFromOverlayItem()Z
    .locals 1

    .prologue
    .line 2641
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->syncAnimationOverlayItem:Z

    return v0
.end method

.method public getMaskImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->maskImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPosition(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2631
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2632
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2633
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2634
    return-void
.end method

.method public getSplitMode()I
    .locals 1

    .prologue
    .line 2390
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->splitMode:I

    return v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 2363
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->onOff:Z

    return v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public setAngle(I)V
    .locals 0

    .prologue
    .line 2372
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->angle:I

    .line 2373
    return-void
.end method

.method public setAnimateSyncFromOverlayItem(Z)V
    .locals 0

    .prologue
    .line 2637
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->syncAnimationOverlayItem:Z

    .line 2638
    return-void
.end method

.method public setMaskImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 2412
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->maskImage:Landroid/graphics/Bitmap;

    .line 2413
    return-void
.end method

.method public setPosition(IIII)V
    .locals 1

    .prologue
    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->splitMode:I

    .line 2600
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2601
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 2602
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2603
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 2604
    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2615
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->splitMode:I

    .line 2616
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2617
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2618
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2619
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2620
    return-void
.end method

.method public setSplitMode(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2431
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->splitMode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->vertical:Z

    if-ne v0, p2, :cond_0

    .line 2585
    :goto_0
    return-void

    .line 2435
    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->splitMode:I

    .line 2436
    iput-boolean p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->vertical:Z

    .line 2437
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    .line 2438
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v1

    .line 2439
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2441
    :pswitch_0
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2442
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2443
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2444
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2457
    :pswitch_1
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2458
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2459
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2460
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2475
    :pswitch_2
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2476
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2477
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2478
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2491
    :pswitch_3
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v3, v1, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2492
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2493
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2494
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2511
    :pswitch_4
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2512
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2513
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2514
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2527
    :pswitch_5
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2528
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2529
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2530
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 2545
    :pswitch_6
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v3, v1, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2546
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2547
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2548
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 2565
    :pswitch_7
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v3, v1, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2566
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2567
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 2568
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 2439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setState(Z)V
    .locals 0

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->onOff:Z

    .line 2355
    return-void
.end method

.method public width()I
    .locals 1

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$Mask;->rectPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method
