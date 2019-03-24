.class public Lmiui/graphics/BitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/graphics/BitmapFactory$CropOption;
    }
.end annotation


# static fields
.field public static final BITMAP_COLOR_MODE_DARK:I = 0x0

.field public static final BITMAP_COLOR_MODE_LIGHT:I = 0x2

.field public static final BITMAP_COLOR_MODE_MEDIUM:I = 0x1

.field public static final MODE_DARK:I = 0x1

.field public static final MODE_DAYNIGHT:I = 0x2

.field public static final MODE_LIGHT:I

.field static yd:Landroid/renderscript/RenderScript;

.field static ye:Ljava/lang/Object;

.field private static yf:[B

.field private static final yg:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private static final yh:Landroid/graphics/Paint;

.field private static final yi:Ljava/util/regex/Pattern;

.field private static final yj:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/graphics/BitmapFactory;->ye:Ljava/lang/Object;

    .line 484
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/graphics/BitmapFactory;->yf:[B

    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 705
    const-string v0, "miuiimageutilities"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/graphics/BitmapFactory;->yg:Ljava/lang/ThreadLocal;

    .line 756
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiui/graphics/BitmapFactory;->yh:Landroid/graphics/Paint;

    .line 758
    sget-object v0, Lmiui/graphics/BitmapFactory;->yh:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 759
    sget-object v0, Lmiui/graphics/BitmapFactory;->yh:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1065
    const-string v0, "[\u3100-\u312d\u31a0-\u31ba\u4e00-\u9fcc\u3400-\u4db5\uf900-\ufad9\u2f00-\u2fd5\u2e80-\u2ef3\u31c0-\u31e3\u1100-\u11ff\ua960-\ua97c\ud7b0-\ud7fb\u3131-\u318e\uac00-\ud7a3\u3040-\u309f\u30a0-\u30ff\u31f0-\u31ff\u3190-\u319f\ua000-\ua48c\ua490-\ua4c6]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/graphics/BitmapFactory;->yi:Ljava/util/regex/Pattern;

    .line 1087
    const-string v1, "\u8001\u5e08"

    const-string v2, "\u5148\u751f"

    const-string v3, "\u8001\u677f"

    const-string v4, "\u4ed4"

    const-string v5, "\u624b\u673a"

    const-string v6, "\u53d4"

    const-string v7, "\u963f\u59e8"

    const-string v8, "\u5b85"

    const-string v9, "\u4f2f"

    const-string v10, "\u4f2f\u6bcd"

    const-string v11, "\u4f2f\u7236"

    const-string v12, "\u54e5"

    const-string v13, "\u59d0"

    const-string v14, "\u5f1f"

    const-string v15, "\u59b9"

    const-string v16, "\u8205"

    const-string v17, "\u59d1"

    const-string v18, "\u7236"

    const-string v19, "\u4e3b\u4efb"

    const-string v20, "\u7ecf\u7406"

    const-string v21, "\u5de5\u4f5c"

    const-string v22, "\u540c\u4e8b"

    const-string v23, "\u5f8b\u5e08"

    const-string v24, "\u53f8\u673a"

    const-string v25, "\u5e08\u5085"

    const-string v26, "\u5e08\u7236"

    const-string v27, "\u7237"

    const-string v28, "\u5976"

    const-string v29, "\u4e2d\u4ecb"

    const-string v30, "\u8463"

    const-string v31, "\u603b"

    const-string v32, "\u592a\u592a"

    const-string v33, "\u4fdd\u59c6"

    const-string v34, "\u67d0"

    const-string v35, "\u79d8\u4e66"

    const-string v36, "\u5904\u957f"

    const-string v37, "\u5c40\u957f"

    const-string v38, "\u73ed\u957f"

    const-string v39, "\u5144"

    const-string v40, "\u52a9\u7406"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/graphics/BitmapFactory;->yj:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lmiui/io/ResettableInputStream;I)I
    .locals 4

    .line 55
    nop

    .line 56
    if-lez p1, :cond_0

    .line 57
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    .line 58
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_0

    .line 60
    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 549
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 550
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 553
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10

    .line 596
    nop

    .line 597
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x19

    if-le p2, v2, :cond_0

    .line 600
    mul-int/lit8 v1, v1, 0x2

    .line 601
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 605
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 606
    if-ne v1, v0, :cond_1

    .line 607
    nop

    .line 612
    move-object v2, p0

    goto :goto_1

    .line 609
    :cond_1
    div-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0, v2, v3}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 612
    :goto_1
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v3

    .line 613
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    .line 614
    new-instance v4, Lmiui/graphics/BitmapFactory$1;

    invoke-direct {v4, v3}, Lmiui/graphics/BitmapFactory$1;-><init>(Landroid/content/Context;)V

    .line 623
    move-object v3, v4

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "android.graphics.Bitmap$Config"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 624
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 625
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 626
    check-cast v7, Ljava/lang/Enum;

    .line 627
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 628
    const-string v9, "RGBA_F16"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    if-ne v8, v7, :cond_3

    .line 629
    invoke-static {v2}, Lmiui/graphics/BitmapFactory;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    nop

    .line 635
    move-object v2, v4

    goto :goto_3

    .line 625
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 635
    :cond_4
    :goto_3
    goto :goto_4

    .line 633
    :catch_0
    move-exception v4

    .line 636
    :goto_4
    sget-object v4, Lmiui/graphics/BitmapFactory;->ye:Ljava/lang/Object;

    monitor-enter v4

    .line 637
    :try_start_1
    sget-object v5, Lmiui/graphics/BitmapFactory;->yd:Landroid/renderscript/RenderScript;

    if-nez v5, :cond_5

    .line 638
    invoke-static {v3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    sput-object v3, Lmiui/graphics/BitmapFactory;->yd:Landroid/renderscript/RenderScript;

    .line 642
    :cond_5
    if-ne v1, v0, :cond_6

    .line 643
    nop

    .line 649
    move-object v1, p1

    goto :goto_5

    .line 645
    :cond_6
    nop

    .line 649
    move-object v1, v2

    :goto_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    if-eq v3, v5, :cond_7

    .line 650
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 653
    :cond_7
    sget-object v0, Lmiui/graphics/BitmapFactory;->yd:Landroid/renderscript/RenderScript;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 654
    sget-object v3, Lmiui/graphics/BitmapFactory;->yd:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 655
    sget-object v5, Lmiui/graphics/BitmapFactory;->yd:Landroid/renderscript/RenderScript;

    sget-object v6, Lmiui/graphics/BitmapFactory;->yd:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    .line 656
    int-to-float p2, p2

    invoke-virtual {v5, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 657
    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 658
    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 660
    invoke-virtual {v3, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 662
    if-eq v1, p1, :cond_8

    .line 663
    invoke-static {v1, p1}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 665
    :cond_8
    if-eq v2, p0, :cond_9

    .line 666
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 668
    :cond_9
    if-eq v1, p1, :cond_a

    .line 669
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 672
    :cond_a
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 673
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 674
    invoke-virtual {v5}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 675
    monitor-exit v4

    .line 677
    return-object p1

    .line 675
    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a([B)Z
    .locals 4

    .line 537
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    sget-object v2, Lmiui/graphics/BitmapFactory;->yf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 540
    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lmiui/graphics/BitmapFactory;->yf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 541
    aget-byte v2, p0, v1

    sget-object v3, Lmiui/graphics/BitmapFactory;->yf:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 542
    return v0

    .line 540
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    :cond_2
    const/4 p0, 0x1

    return p0

    .line 538
    :cond_3
    :goto_1
    return v0
.end method

.method private static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 687
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 688
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 689
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 693
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 695
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 696
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 697
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 700
    :cond_1
    return-object v0

    .line 690
    :cond_2
    :goto_0
    return-object p0
.end method

.method private static cm()Landroid/graphics/Canvas;
    .locals 2

    .line 763
    sget-object v0, Lmiui/graphics/BitmapFactory;->yg:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    .line 764
    if-nez v0, :cond_0

    .line 765
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 766
    sget-object v1, Lmiui/graphics/BitmapFactory;->yg:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 768
    :cond_0
    return-object v0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    .line 810
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 812
    if-eqz p1, :cond_0

    .line 813
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 817
    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 815
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 817
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 834
    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0, p5, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 851
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p6, :cond_0

    .line 852
    return-object v0

    .line 855
    :cond_0
    if-nez p1, :cond_3

    .line 856
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 857
    :cond_2
    :goto_0
    return-object v0

    .line 860
    :cond_3
    if-nez p6, :cond_4

    .line 861
    new-instance p6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p6, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 864
    :cond_4
    :goto_1
    invoke-static {p0, p2, v0, p5, p6}, Lmiui/graphics/BitmapFactory;->maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 866
    invoke-static {}, Lmiui/graphics/BitmapFactory;->cm()Landroid/graphics/Canvas;

    move-result-object p2

    .line 867
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 868
    if-eqz p4, :cond_5

    .line 869
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 870
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 872
    :cond_5
    invoke-virtual {p2, p0, p6, p6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 873
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 874
    if-eqz p3, :cond_6

    .line 875
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 876
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 879
    :cond_6
    return-object p1
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 950
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lmiui/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 968
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 964
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiui/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 6

    .line 972
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 973
    return-object v0

    .line 975
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiui/graphics/BitmapFactory;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 976
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    return-object v0

    .line 980
    :cond_1
    nop

    .line 981
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p3, :cond_6

    .line 982
    if-nez p5, :cond_2

    .line 983
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/miui/internal/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 984
    :cond_2
    if-ne v1, p5, :cond_3

    .line 985
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/miui/internal/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 986
    :cond_3
    if-ne v0, p5, :cond_5

    .line 987
    sget p3, Lcom/miui/internal/R$attr;->wordPhotoBackground:I

    invoke-static {p0, p3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 988
    if-nez p3, :cond_7

    .line 989
    invoke-static {p0}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 990
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/miui/internal/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 992
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/miui/internal/R$drawable;->word_photo_bg_light:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 996
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown mode when get drawable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 999
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 1001
    :cond_7
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1003
    nop

    .line 1004
    if-nez p4, :cond_d

    .line 1005
    if-nez p5, :cond_8

    .line 1006
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiui/R$color;->word_photo_color:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    .line 1007
    :cond_8
    if-ne v1, p5, :cond_9

    .line 1008
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lcom/miui/internal/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    .line 1009
    :cond_9
    if-ne v0, p5, :cond_c

    .line 1011
    const/4 p4, -0x1

    :try_start_0
    sget p5, Lcom/miui/internal/R$attr;->wordPhotoTextColor:I

    invoke-static {p0, p5}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_1

    .line 1012
    :catch_0
    move-exception p5

    .line 1015
    move p5, p4

    :goto_1
    if-ne p5, p4, :cond_b

    .line 1016
    invoke-static {p0}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 1017
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lcom/miui/internal/R$color;->word_photo_color_dark:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    .line 1019
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lmiui/R$color;->word_photo_color:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    .line 1029
    :cond_b
    move p0, p5

    goto :goto_2

    .line 1023
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown mode when get photo color: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1026
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 1029
    :goto_2
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1030
    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1031
    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1033
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1034
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1035
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1036
    int-to-float p0, p2

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1038
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 1039
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p1, v3, v0, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1041
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1042
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    sub-int/2addr p2, v1

    int-to-double v4, p2

    mul-double/2addr v4, v2

    double-to-int p0, v4

    .line 1043
    int-to-float p2, v0

    int-to-float p0, p0

    invoke-virtual {p5, p1, p2, p0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1045
    return-object p4
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 778
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->contact_photo_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 779
    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 791
    sget v0, Lcom/miui/internal/R$drawable;->ic_contact_photo_fg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 792
    sget v0, Lcom/miui/internal/R$drawable;->ic_contact_photo_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 793
    sget v0, Lcom/miui/internal/R$drawable;->ic_contact_photo_mask:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 794
    const/4 v2, 0x0

    move-object v1, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 388
    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 391
    :cond_0
    if-nez p2, :cond_1

    .line 392
    new-instance v2, Lmiui/graphics/BitmapFactory$CropOption;

    invoke-direct {v2}, Lmiui/graphics/BitmapFactory$CropOption;-><init>()V

    goto :goto_0

    .line 395
    :cond_1
    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v2, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 396
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 397
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5, v7}, Lmiui/graphics/BitmapFactory;->d(III)I

    move-result v5

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v7, v8}, Lmiui/graphics/BitmapFactory;->d(III)I

    move-result v7

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8, v9}, Lmiui/graphics/BitmapFactory;->d(III)I

    move-result v8

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9, v3}, Lmiui/graphics/BitmapFactory;->d(III)I

    move-result v3

    .line 404
    sub-int v9, v7, v5

    .line 405
    sub-int v10, v3, v8

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 409
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x2

    div-int/2addr v13, v14

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    invoke-static {v4, v13, v15}, Lmiui/graphics/BitmapFactory;->d(III)I

    move-result v13

    iput v13, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 410
    div-int/lit8 v13, v11, 0x2

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    invoke-static {v4, v13, v15}, Lmiui/graphics/BitmapFactory;->d(III)I

    move-result v13

    iput v13, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 411
    div-int/lit8 v13, v12, 0x2

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    invoke-static {v4, v13, v15}, Lmiui/graphics/BitmapFactory;->d(III)I

    move-result v13

    iput v13, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 413
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 414
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 415
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 416
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 418
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 419
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 421
    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v4, v15

    if-lez v4, :cond_3

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v4, v15

    if-lez v4, :cond_3

    .line 422
    new-instance v4, Landroid/graphics/RectF;

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    int-to-float v15, v15

    iget v14, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    int-to-float v14, v14

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v1, v11, v1

    int-to-float v1, v1

    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v0, v12, v0

    int-to-float v0, v0

    invoke-direct {v4, v15, v14, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iget v14, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual {v6, v4, v0, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 424
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 427
    :cond_3
    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    const/4 v1, 0x2

    mul-int v14, v1, v0

    sub-int v0, v11, v14

    .line 428
    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    mul-int v14, v1, v4

    sub-int v1, v12, v14

    .line 429
    int-to-float v4, v9

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v14, v9, v4

    int-to-float v0, v0

    div-float/2addr v14, v0

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v1, v1

    div-float/2addr v9, v1

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 430
    mul-float/2addr v0, v9

    sub-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    float-to-int v4, v4

    .line 431
    mul-float/2addr v1, v9

    sub-float/2addr v10, v1

    div-float/2addr v10, v0

    float-to-int v0, v10

    .line 432
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v4

    add-int/2addr v8, v0

    sub-int/2addr v7, v4

    sub-int/2addr v3, v0

    invoke-direct {v1, v5, v8, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 434
    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iget v5, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v5, v11, v5

    iget v7, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v7, v12, v7

    invoke-direct {v0, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    move-object/from16 v3, p0

    invoke-virtual {v6, v3, v1, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 437
    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    if-lez v0, :cond_4

    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_4

    .line 438
    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 440
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v11

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    int-to-float v1, v1

    iget v2, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    int-to-float v2, v2

    invoke-virtual {v6, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 442
    :cond_4
    move-object/from16 v0, p1

    return-object v0

    .line 389
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .locals 1

    .line 373
    if-eqz p0, :cond_0

    .line 374
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    invoke-static {p0, v0, p1}, Lmiui/graphics/BitmapFactory;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 377
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(III)I
    .locals 0

    .line 446
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    nop

    .line 192
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :try_start_1
    invoke-static {v1, p2, p3, p4}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    nop

    .line 196
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 193
    return-object p0

    .line 195
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    nop

    .line 235
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    :try_start_1
    invoke-static {v1, p2, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    nop

    .line 239
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 236
    return-object p0

    .line 238
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    nop

    .line 168
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    const/4 p0, -0x1

    :try_start_1
    invoke-static {v1, p0, p2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    nop

    .line 172
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 169
    return-object p0

    .line 171
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    nop

    .line 147
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    nop

    .line 151
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 148
    return-object p0

    .line 150
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    nop

    .line 213
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    :try_start_1
    invoke-static {v1, p1, p2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    nop

    .line 217
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 214
    return-object p0

    .line 216
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    nop

    .line 124
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    const/4 p0, -0x1

    :try_start_1
    invoke-static {v1, p0, p1}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    nop

    .line 128
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 125
    return-object p0

    .line 127
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    mul-int v0, p1, p2

    .line 291
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 292
    :cond_0
    const/4 v0, -0x1

    .line 294
    :cond_1
    invoke-static {p0, v0, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 295
    if-nez p0, :cond_2

    .line 296
    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_2
    if-lez v0, :cond_4

    .line 299
    nop

    .line 300
    invoke-static {p0, p1, p2}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 301
    if-eq p0, p1, :cond_3

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_3
    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 256
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 258
    invoke-static {p0, p1}, Lmiui/graphics/BitmapFactory;->a(Lmiui/io/ResettableInputStream;I)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 260
    nop

    .line 261
    nop

    .line 262
    :goto_0
    add-int/lit8 p1, v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->reset()V

    .line 265
    invoke-static {p0, v3, v0}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_1

    .line 267
    :catch_0
    move-exception v1

    .line 268
    if-eqz p2, :cond_0

    .line 269
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 273
    nop

    .line 262
    move v1, p1

    goto :goto_0

    .line 271
    :cond_0
    throw v1

    .line 275
    :cond_1
    :goto_1
    return-object v3
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 564
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 565
    invoke-static {p0, v0, p1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 566
    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 579
    if-nez p0, :cond_0

    .line 580
    const/4 p0, 0x0

    return-object p0

    .line 582
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 583
    :cond_1
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 585
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 586
    invoke-static {p0, p1, p2}, Lmiui/graphics/BitmapFactory;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 588
    :cond_3
    invoke-static {p0, p1, p2}, Lmiui/graphics/BitmapFactory;->native_fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 590
    :goto_0
    return-object p1
.end method

.method public static getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    .locals 17

    move-object/from16 v0, p0

    .line 1171
    nop

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v2, v2, p1

    .line 1173
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int v3, v3, p1

    .line 1174
    mul-int v1, v3, v2

    div-int/lit8 v1, v1, 0x5

    .line 1175
    invoke-static {v0, v3, v2}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1177
    nop

    .line 1178
    const/4 v5, 0x2

    const/4 v6, 0x0

    move v7, v5

    move v5, v6

    move v8, v5

    :goto_0
    if-ge v5, v3, :cond_3

    .line 1179
    move v9, v7

    move v7, v6

    :goto_1
    if-ge v7, v2, :cond_2

    .line 1180
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 1181
    const/high16 v11, 0xff0000

    and-int/2addr v11, v10

    shr-int/lit8 v11, v11, 0x10

    .line 1182
    const v12, 0xff00

    and-int/2addr v12, v10

    shr-int/lit8 v12, v12, 0x8

    .line 1183
    and-int/lit16 v10, v10, 0xff

    .line 1184
    int-to-float v11, v11

    float-to-double v13, v11

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    int-to-float v11, v12

    float-to-double v11, v11

    const-wide v15, 0x3fe2e147ae147ae1L    # 0.59

    mul-double/2addr v11, v15

    add-double/2addr v13, v11

    int-to-float v10, v10

    float-to-double v10, v10

    const-wide v15, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v10, v15

    add-double/2addr v13, v10

    double-to-int v10, v13

    .line 1185
    const/16 v11, 0xb4

    if-ge v10, v11, :cond_1

    .line 1186
    add-int/lit8 v8, v8, 0x1

    .line 1187
    if-le v8, v1, :cond_0

    .line 1188
    nop

    .line 1190
    const/4 v9, 0x1

    :cond_0
    mul-int/lit8 v10, v1, 0x2

    if-le v8, v10, :cond_1

    .line 1191
    nop

    .line 1192
    nop

    .line 1178
    move v7, v6

    goto :goto_2

    .line 1179
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1178
    :cond_2
    move v7, v9

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1198
    :cond_3
    if-eq v4, v0, :cond_4

    .line 1199
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1202
    :cond_4
    return v7
.end method

.method public static getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    nop

    .line 104
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    nop

    .line 108
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 105
    return-object p0

    .line 107
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    nop

    .line 85
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    nop

    .line 89
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 86
    return-object p0

    .line 88
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 70
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 73
    return-object v0
.end method

.method public static isPngFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    nop

    .line 495
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 496
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->isPngFormat(Lmiui/io/ResettableInputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    nop

    .line 499
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 496
    return p0

    .line 498
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static isPngFormat(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    nop

    .line 512
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 513
    :try_start_1
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->isPngFormat(Lmiui/io/ResettableInputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    nop

    .line 516
    invoke-virtual {v1}, Lmiui/io/ResettableInputStream;->close()V

    .line 513
    return p0

    .line 515
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_0
    throw p0
.end method

.method public static isPngFormat(Lmiui/io/ResettableInputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    nop

    .line 528
    sget-object v0, Lmiui/graphics/BitmapFactory;->yf:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 529
    invoke-virtual {p0, v0}, Lmiui/io/ResettableInputStream;->read([B)I

    move-result p0

    .line 530
    array-length v1, v0

    if-lt p0, v1, :cond_0

    .line 531
    invoke-static {v0}, Lmiui/graphics/BitmapFactory;->a([B)Z

    move-result p0

    goto :goto_0

    .line 533
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 9

    .line 894
    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 895
    return-object v0

    .line 898
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 899
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 902
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 900
    :cond_2
    :goto_0
    return-object v0

    .line 903
    :cond_3
    if-nez p4, :cond_4

    .line 904
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p4, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 907
    :cond_4
    :goto_1
    invoke-static {}, Lmiui/graphics/BitmapFactory;->cm()Landroid/graphics/Canvas;

    move-result-object v0

    .line 908
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 909
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 911
    if-eqz p1, :cond_5

    .line 912
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 913
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 916
    :cond_5
    if-nez p3, :cond_8

    .line 917
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 918
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 919
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 920
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 921
    nop

    .line 922
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v4, v3, v2

    .line 923
    int-to-float v5, p1

    div-float v2, v5, v2

    .line 924
    int-to-float v6, p3

    div-float v3, v6, v3

    .line 925
    cmpl-float v7, v2, v3

    if-lez v7, :cond_6

    .line 926
    div-float/2addr v6, v4

    float-to-int v2, v6

    .line 927
    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    .line 928
    nop

    .line 929
    nop

    .line 934
    move v8, v1

    move v1, p1

    move p1, v2

    move v2, p3

    move p3, v8

    goto :goto_2

    .line 929
    :cond_6
    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 930
    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 931
    sub-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    .line 932
    goto :goto_2

    .line 934
    :cond_7
    move v2, p3

    move p3, v1

    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr v2, p3

    invoke-direct {v3, v1, p3, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 937
    move-object p3, v3

    :cond_8
    sget-object p1, Lmiui/graphics/BitmapFactory;->yh:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p3, p4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 938
    return-object p2
.end method

.method private static native native_fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    if-eqz p0, :cond_2

    .line 470
    const/4 v0, 0x0

    .line 472
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    if-eqz p2, :cond_0

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 475
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 473
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    nop

    .line 476
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 479
    const/4 p0, 0x1

    return p0

    .line 475
    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 476
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p0

    .line 481
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 317
    if-nez p0, :cond_0

    .line 318
    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 323
    goto :goto_0

    .line 325
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 326
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 329
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 331
    invoke-static {p0, p1}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 334
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 346
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 350
    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 355
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 356
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 357
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 360
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 360
    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 363
    move-object p0, p1

    :goto_0
    return-object p0

    .line 347
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1049
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1050
    return-object v1

    .line 1052
    :cond_0
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1054
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    return-object v1

    .line 1056
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1057
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1059
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/Utf8TextUtils;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static w(Ljava/lang/String;)Z
    .locals 1

    .line 1094
    sget-object v0, Lmiui/graphics/BitmapFactory;->yi:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1098
    nop

    .line 1099
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    const/4 p0, 0x0

    return-object p0

    .line 1101
    :cond_0
    nop

    .line 1103
    move-object v0, p0

    .line 1104
    :cond_1
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    move v3, v0

    :goto_0
    sget-object v4, Lmiui/graphics/BitmapFactory;->yj:[Ljava/lang/String;

    const/4 v5, 0x1

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 1105
    sget-object v4, Lmiui/graphics/BitmapFactory;->yj:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1106
    nop

    .line 1107
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lmiui/graphics/BitmapFactory;->yj:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1116
    :goto_1
    move v3, v5

    goto :goto_2

    .line 1109
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1111
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/graphics/BitmapFactory;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1112
    nop

    .line 1113
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1116
    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1117
    goto :goto_3

    .line 1104
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1119
    :cond_5
    :goto_3
    move-object v0, v2

    if-eqz v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    :cond_6
    if-eqz v0, :cond_7

    .line 1121
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1124
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1127
    :cond_8
    return-object v0
.end method
