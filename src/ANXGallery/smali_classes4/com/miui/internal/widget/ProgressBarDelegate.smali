.class public Lcom/miui/internal/widget/ProgressBarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "ProgressBarDelegate"

.field private static final uR:Lmiui/reflect/Method;

.field private static final uS:Lmiui/reflect/Method;

.field private static final uT:Lmiui/reflect/Method;

.field private static final uU:Lmiui/reflect/Method;

.field private static uV:Lmiui/reflect/Method; = null

.field private static uW:Lmiui/reflect/Method; = null

.field private static final uX:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

.field private static final uY:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

.field private static final uZ:I = 0x2710


# instance fields
.field private cY:Z

.field private final va:Landroid/widget/ProgressBar;

.field private final vb:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private vc:Landroid/graphics/drawable/Drawable;

.field private vd:Landroid/graphics/drawable/Drawable;

.field private ve:Z

.field private vf:Landroid/graphics/drawable/Drawable;

.field private vg:Z

.field private vh:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminate"

    const-string v2, "(Z)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uR:Lmiui/reflect/Method;

    .line 45
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminateDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uS:Lmiui/reflect/Method;

    .line 48
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setProgressDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Lmiui/reflect/Method;

    .line 51
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "onSizeChanged"

    const-string v2, "(IIII)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uU:Lmiui/reflect/Method;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 58
    :try_start_0
    const-class v0, Landroid/graphics/drawable/LayerDrawable;

    const-string v1, "getLayerGravity"

    const-string v2, "(I)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Lmiui/reflect/Method;

    .line 59
    const-class v0, Landroid/graphics/drawable/LayerDrawable;

    const-string v1, "setLayerGravity"

    const-string v2, "(II)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uW:Lmiui/reflect/Method;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "ProgressBarDelegate"

    const-string v2, "Fail to find method in LayerDrawable class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    .line 70
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uY:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->cY:Z

    .line 89
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    .line 90
    iput-object p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vb:Ljava/lang/Class;

    .line 91
    return-void
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 315
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 321
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 322
    const/16 v2, 0x2710

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 323
    invoke-virtual {p1, v4, v4, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 316
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 13

    move-object v0, p1

    .line 243
    instance-of v1, v0, Landroid/graphics/drawable/NinePatchDrawable;

    const v2, 0x800003

    const/4 v3, 0x1

    if-nez v1, :cond_d

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 247
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_1

    .line 248
    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 249
    if-eq v1, v0, :cond_e

    .line 250
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 311
    :goto_0
    move-object v1, v0

    goto/16 :goto_9

    .line 252
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 253
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 254
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 255
    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    .line 257
    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_4

    .line 258
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 259
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 260
    const v7, 0x102000d

    if-eq v6, v7, :cond_3

    const v7, 0x102000f

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 263
    :cond_2
    aput-object v8, v4, v5

    goto :goto_3

    .line 261
    :cond_3
    :goto_2
    move-object v7, p0

    move-object v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v7 .. v12}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 257
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    :cond_4
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 268
    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_6

    .line 269
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 270
    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Lmiui/reflect/Method;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->uW:Lmiui/reflect/Method;

    if-eqz v6, :cond_5

    .line 271
    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->uV:Lmiui/reflect/Method;

    const-class v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v0, v8}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v6

    .line 272
    sget-object v7, Lcom/miui/internal/widget/ProgressBarDelegate;->uW:Lmiui/reflect/Method;

    const-class v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-virtual {v7, v8, v5, v9}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 268
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 276
    :cond_6
    nop

    .line 277
    nop

    .line 311
    move-object v1, v5

    goto/16 :goto_9

    .line 277
    :cond_7
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_9

    .line 278
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 279
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 280
    sget-object v3, Lcom/miui/internal/widget/ProgressBarDelegate;->uY:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v3, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v3

    .line 281
    :goto_5
    if-ge v2, v3, :cond_8

    .line 282
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uY:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v4, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 283
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uY:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v4, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v4

    .line 284
    move-object v5, p0

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 285
    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 288
    :cond_8
    nop

    .line 289
    goto :goto_9

    :cond_9
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_c

    .line 290
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 291
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 292
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 293
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 295
    :goto_6
    const/16 v4, 0x2710

    if-ge v2, v1, :cond_a

    .line 296
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, p0

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 297
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 298
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 300
    :cond_a
    if-eqz p5, :cond_b

    .line 301
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    goto :goto_7

    .line 303
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getLevel()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 305
    :goto_7
    nop

    .line 306
    nop

    .line 311
    move-object v1, v3

    goto :goto_9

    .line 307
    :cond_c
    const-string v1, "ProgressBarDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Drawable subclass, src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    goto/16 :goto_0

    .line 245
    :cond_d
    :goto_8
    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 311
    :cond_e
    :goto_9
    return-object v1
.end method

.method private a(IIII)V
    .locals 5

    .line 380
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uU:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vb:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 330
    nop

    .line 331
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 332
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 334
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 338
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 340
    :cond_2
    const-string v0, "ProgressBarDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The drawable should be NinePatchDrawable or BitmapDrawable. drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_1
    return-void
.end method

.method private bN()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->r(Z)V

    .line 179
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 361
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uS:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vb:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method public static create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;)",
            "Lcom/miui/internal/widget/ProgressBarDelegate;"
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/miui/internal/widget/ProgressBarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;-><init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V

    return-object v0
.end method

.method private d(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 369
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uT:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vb:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 370
    return-void
.end method

.method private r(Z)V
    .locals 11

    .line 182
    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->cY:Z

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    .line 187
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 188
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 191
    if-ge v1, v2, :cond_1

    .line 192
    nop

    .line 193
    nop

    .line 194
    nop

    .line 197
    move v10, v2

    move v2, v1

    move v1, v10

    :cond_1
    iget-object v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vc:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    :cond_2
    const/4 v3, 0x1

    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vg:Z

    if-eqz v4, :cond_5

    .line 202
    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vg:Z

    .line 203
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vf:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vc:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    move v6, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 205
    if-eqz p1, :cond_4

    if-lez v1, :cond_4

    if-lez v2, :cond_4

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    nop

    .line 212
    sub-int v0, v1, v1

    .line 213
    add-int/lit8 v1, v1, 0x0

    goto :goto_0

    .line 215
    :cond_3
    move v0, v9

    :goto_0
    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->c(Landroid/graphics/drawable/Drawable;)V

    .line 218
    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ve:Z

    if-eqz p1, :cond_6

    .line 219
    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ve:Z

    .line 220
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vd:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vc:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    move v6, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->d(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 226
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 230
    iget-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 231
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 232
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 235
    :cond_6
    :goto_1
    return-void
.end method

.method private s(Z)V
    .locals 5

    .line 353
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->uR:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vb:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 354
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isEnabled()Z

    move-result v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vh:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 175
    return-void
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vc:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ve:Z

    .line 162
    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vg:Z

    .line 163
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bN()V

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(IIII)V

    .line 165
    return-void
.end method

.method public postConstruct(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    sget-object v1, Lmiui/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 96
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vf:Landroid/graphics/drawable/Drawable;

    .line 97
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesCount:I

    const/16 v4, 0x30

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 101
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v1, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    .line 102
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesDuration:I

    const/16 v4, 0x19

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 105
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->uX:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v1, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    .line 108
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->cY:Z

    .line 109
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_progressMask:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_1

    .line 111
    invoke-direct {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->b(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bN()V

    .line 116
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    new-array v0, v1, [I

    const v1, 0x1010033

    aput v1, v0, v2

    invoke-virtual {p2, p1, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 120
    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vh:F

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->va:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->r(Z)V

    .line 127
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->s(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vf:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 141
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vf:Landroid/graphics/drawable/Drawable;

    .line 142
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vg:Z

    .line 143
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bN()V

    .line 145
    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vd:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vd:Landroid/graphics/drawable/Drawable;

    .line 134
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ve:Z

    .line 135
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bN()V

    .line 137
    :cond_0
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vc:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 149
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vc:Landroid/graphics/drawable/Drawable;

    .line 150
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ve:Z

    .line 151
    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->vg:Z

    .line 152
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
