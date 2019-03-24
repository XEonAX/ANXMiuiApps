.class public Lmiui/imagefilters/BlendImageFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;,
        Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;,
        Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;,
        Lmiui/imagefilters/BlendImageFilter$Blender;
    }
.end annotation


# static fields
.field static final BLEND_TYPE_COLOR:I = 0x15

.field static final BLEND_TYPE_COLOR_BURN:I = 0xa

.field static final BLEND_TYPE_COLOR_DODGE:I = 0x9

.field static final BLEND_TYPE_DARKEN:I = 0x3

.field static final BLEND_TYPE_DIFFERENCE:I = 0x5

.field static final BLEND_TYPE_DIVIDE:I = 0x17

.field static final BLEND_TYPE_EXCLUSION:I = 0x12

.field static final BLEND_TYPE_HARD_LIGHT:I = 0xc

.field static final BLEND_TYPE_HARD_MIX:I = 0x11

.field static final BLEND_TYPE_HUE:I = 0x13

.field static final BLEND_TYPE_LIGHTEN:I = 0x4

.field static final BLEND_TYPE_LINEAR_BURN:I = 0x7

.field static final BLEND_TYPE_LINEAR_DODGE:I = 0x6

.field static final BLEND_TYPE_LINEAR_LIGHT:I = 0xf

.field static final BLEND_TYPE_LUMINOSITY:I = 0x16

.field static final BLEND_TYPE_MULTIPLY:I = 0x1

.field static final BLEND_TYPE_NORMAL:I = 0x0

.field static final BLEND_TYPE_OPACITY:I = 0xb

.field static final BLEND_TYPE_OVERLAY:I = 0x8

.field static final BLEND_TYPE_PIN_LIGHT:I = 0x10

.field static final BLEND_TYPE_SATURATION:I = 0x14

.field static final BLEND_TYPE_SCREEN:I = 0x2

.field static final BLEND_TYPE_SOFT_LIGHT:I = 0xd

.field static final BLEND_TYPE_SUBTRACT:I = 0x18

.field static final BLEND_TYPE_VIVID_LIGHT:I = 0xe

.field static final TAG:Ljava/lang/String; = "BlendImageFilter"


# instance fields
.field private mBlendType:I

.field private mInputFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

.field private mInputImage:Lmiui/imagefilters/ImageData;

.field private mInputImageCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lmiui/imagefilters/ImageData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsInputImageOnTop:Z

.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private mUseOriginalImage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    .line 113
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
    .locals 3

    .line 295
    iget v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    packed-switch v0, :pswitch_data_0

    .line 537
    const-string v0, "BlendImageFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown blender type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x0

    return-object v0

    .line 404
    :pswitch_0
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$14;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$14;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 397
    :pswitch_1
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$13;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$13;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 501
    :pswitch_2
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$24;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$24;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 489
    :pswitch_3
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$23;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$23;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 477
    :pswitch_4
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$22;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$22;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 465
    :pswitch_5
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$21;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$21;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 458
    :pswitch_6
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$20;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$20;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 447
    :pswitch_7
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$19;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$19;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 432
    :pswitch_8
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$18;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$18;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 390
    :pswitch_9
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$12;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$12;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 379
    :pswitch_a
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$11;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$11;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 329
    :pswitch_b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$5;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$5;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 340
    :pswitch_c
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$6;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$6;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 513
    :pswitch_d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$25;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$25;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 365
    :pswitch_e
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$9;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$9;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 351
    :pswitch_f
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$7;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$7;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 318
    :pswitch_10
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$4;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$4;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 372
    :pswitch_11
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$10;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$10;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 358
    :pswitch_12
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$8;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$8;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 411
    :pswitch_13
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$15;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$15;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 425
    :pswitch_14
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$17;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$17;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 418
    :pswitch_15
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$16;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$16;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 311
    :pswitch_16
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$3;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$3;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 304
    :pswitch_17
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$2;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$2;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 297
    :pswitch_18
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$1;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$1;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
    .locals 3

    .line 543
    sget-object v0, Lmiui/imagefilters/BlendImageFilter$41;->$SwitchMap$android$graphics$PorterDuff$Mode:[I

    iget-object v1, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 695
    const-string v0, "BlendImageFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport porter duff mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, 0x0

    return-object v0

    .line 685
    :pswitch_0
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$40;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$40;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 675
    :pswitch_1
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$39;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$39;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 665
    :pswitch_2
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$38;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$38;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 655
    :pswitch_3
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$37;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$37;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 645
    :pswitch_4
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$36;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$36;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 635
    :pswitch_5
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$35;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$35;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 625
    :pswitch_6
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$34;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$34;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 615
    :pswitch_7
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$33;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$33;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 605
    :pswitch_8
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$32;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$32;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 595
    :pswitch_9
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$31;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$31;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 585
    :pswitch_a
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$30;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$30;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 575
    :pswitch_b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$29;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$29;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 565
    :pswitch_c
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$28;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$28;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 555
    :pswitch_d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$27;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$27;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    .line 545
    :pswitch_e
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$26;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$26;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mergeWidthHeight(II)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 288
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 291
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    return v0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image\'s width or height to large:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private obtainInputImageBySize(II)Lmiui/imagefilters/ImageData;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 262
    invoke-direct {p0, p1, p2}, Lmiui/imagefilters/BlendImageFilter;->mergeWidthHeight(II)I

    move-result v0

    .line 265
    .local v0, "widthHeight":I
    iget-object v1, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    .local v1, "cache":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lmiui/imagefilters/ImageData;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 267
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/imagefilters/ImageData;

    return-object v2

    .line 271
    :cond_1
    iget-object v2, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    iget v2, v2, Lmiui/imagefilters/ImageData;->width:I

    iget-object v3, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    iget v3, v3, Lmiui/imagefilters/ImageData;->height:I

    invoke-direct {p0, v2, v3}, Lmiui/imagefilters/BlendImageFilter;->mergeWidthHeight(II)I

    move-result v2

    .line 272
    .local v2, "originWidthHeight":I
    if-ne v2, v0, :cond_2

    .line 273
    iget-object v3, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    return-object v3

    .line 277
    :cond_2
    iget-object v3, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    invoke-static {v3}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 278
    .local v3, "originBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 279
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v5

    .line 282
    .local v5, "newImageData":Lmiui/imagefilters/ImageData;
    new-instance v6, Ljava/lang/ref/SoftReference;

    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    .line 284
    return-object v5
.end method


# virtual methods
.method public canConcurrence()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    invoke-super {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->canConcurrence()Z

    move-result v0

    return v0
.end method

.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 17
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    move-object/from16 v0, p0

    .line 222
    move-object/from16 v1, p1

    iget-object v2, v0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    if-nez v2, :cond_0

    .line 223
    return-void

    .line 226
    :cond_0
    invoke-direct/range {p0 .. p0}, Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;

    move-result-object v2

    .line 227
    .local v2, "blendable":Lmiui/imagefilters/BlendImageFilter$Blender;
    if-nez v2, :cond_1

    .line 228
    return-void

    .line 231
    :cond_1
    invoke-direct/range {p0 .. p0}, Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;

    move-result-object v3

    .line 232
    .local v3, "porterDuffBlender":Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
    if-nez v3, :cond_2

    .line 233
    return-void

    .line 236
    :cond_2
    iget v4, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 237
    .local v4, "width":I
    iget v5, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 238
    .local v5, "height":I
    iget-object v6, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 240
    .local v6, "pixels":[I
    move-object v7, v6

    .line 241
    .local v7, "dstPixels":[I
    invoke-direct {v0, v4, v5}, Lmiui/imagefilters/BlendImageFilter;->obtainInputImageBySize(II)Lmiui/imagefilters/ImageData;

    move-result-object v8

    iget-object v8, v8, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 243
    .local v8, "srcPixels":[I
    iget-boolean v9, v0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    if-nez v9, :cond_3

    .line 244
    move-object v7, v8

    .line 245
    move-object v8, v6

    .line 248
    :cond_3
    const/4 v9, 0x0

    move v10, v9

    .local v10, "x":I
    :goto_0
    if-ge v10, v4, :cond_5

    .line 249
    move v11, v9

    .local v11, "y":I
    :goto_1
    if-ge v11, v5, :cond_4

    .line 250
    mul-int v12, v11, v4

    add-int/2addr v12, v10

    .line 251
    .local v12, "colorIndex":I
    aget v13, v7, v12

    .line 252
    .local v13, "dstArgb":I
    aget v14, v8, v12

    .line 254
    .local v14, "srcArgb":I
    invoke-virtual {v2, v13, v14}, Lmiui/imagefilters/BlendImageFilter$Blender;->blendColor(II)I

    move-result v15

    .line 256
    .local v15, "blendedSrcArgb":I
    invoke-virtual {v3, v13, v15}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;->blendFinal(II)I

    move-result v16

    aput v16, v6, v12

    .line 249
    .end local v12    # "colorIndex":I
    .end local v13    # "dstArgb":I
    .end local v14    # "srcArgb":I
    .end local v15    # "blendedSrcArgb":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 248
    .end local v11    # "y":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 259
    .end local v10    # "x":I
    :cond_5
    return-void
.end method

.method public putOriginalImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;

    .line 202
    iget-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    .line 209
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    .line 210
    return-void
.end method

.method public setBlendType(I)V
    .locals 0
    .param p1, "blendType"    # I

    .line 119
    iput p1, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    .line 120
    return-void
.end method

.method public setBlendTypeName(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 133
    :cond_0
    const-string v0, "Multiply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 135
    :cond_1
    const-string v0, "Screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 137
    :cond_2
    const-string v0, "Darken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    const/4 v0, 0x3

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 139
    :cond_3
    const-string v0, "Lighten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    const/4 v0, 0x4

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 141
    :cond_4
    const-string v0, "Difference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 143
    :cond_5
    const-string v0, "LinearDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    const/4 v0, 0x6

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 145
    :cond_6
    const-string v0, "LinearBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    const/4 v0, 0x7

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 147
    :cond_7
    const-string v0, "Overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    const/16 v0, 0x8

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 149
    :cond_8
    const-string v0, "ColorDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    const/16 v0, 0x9

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 151
    :cond_9
    const-string v0, "ColorBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    const/16 v0, 0xa

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 153
    :cond_a
    const-string v0, "Opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    const/16 v0, 0xb

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 155
    :cond_b
    const-string v0, "HardLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 156
    const/16 v0, 0xc

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 157
    :cond_c
    const-string v0, "SoftLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 158
    const/16 v0, 0xd

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 159
    :cond_d
    const-string v0, "VividLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 160
    const/16 v0, 0xe

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 161
    :cond_e
    const-string v0, "LinearLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    const/16 v0, 0xf

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 163
    :cond_f
    const-string v0, "PinLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 164
    const/16 v0, 0x10

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 165
    :cond_10
    const-string v0, "HardMix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 166
    const/16 v0, 0x11

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_1

    .line 167
    :cond_11
    const-string v0, "Exclusion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 168
    const/16 v0, 0x12

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_1

    .line 169
    :cond_12
    const-string v0, "Hue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 170
    const/16 v0, 0x13

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_1

    .line 171
    :cond_13
    const-string v0, "Saturation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    const/16 v0, 0x14

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_1

    .line 173
    :cond_14
    const-string v0, "Color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    const/16 v0, 0x15

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_1

    .line 175
    :cond_15
    const-string v0, "Luminosity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 176
    const/16 v0, 0x16

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_1

    .line 177
    :cond_16
    const-string v0, "Divide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    const/16 v0, 0x17

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_1

    .line 179
    :cond_17
    const-string v0, "Subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 180
    const/16 v0, 0x18

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_1

    .line 182
    :cond_18
    const-string v0, "BlendImageFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown blend type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    :cond_19
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    .line 184
    :goto_1
    return-void
.end method

.method public setInputFilters(Lmiui/imagefilters/IImageFilter$ImageFilterGroup;)V
    .locals 1
    .param p1, "filters"    # Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    .line 193
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter;->mInputFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    .line 194
    return-void
.end method

.method public setInputImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 187
    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    .line 189
    return-void
.end method

.method public setIsInputImageOnTop(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 123
    iput-boolean p1, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    .line 124
    return-void
.end method

.method public setPorterDuffMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/PorterDuff$Mode;

    .line 127
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 128
    return-void
.end method

.method public setUseOriginalImage(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 197
    iput-boolean p1, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    .line 198
    return-void
.end method
