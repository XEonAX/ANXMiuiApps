.class public Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;
.super Ljava/lang/Object;
.source "LookUpTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

.field private b:I

.field private c:I

.field private d:Ljava/nio/IntBuffer;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;Landroid/graphics/Bitmap;)V
    .locals 13

    .prologue
    const/high16 v0, 0x40000

    const/16 v12, 0x200

    const/16 v11, 0x40

    const/16 v10, 0x8

    const/4 v2, 0x0

    .line 381
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v8

    .line 384
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->d:Ljava/nio/IntBuffer;

    .line 385
    invoke-virtual {v8}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 386
    invoke-virtual {v8}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v5

    .line 387
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v6

    move v4, v2

    .line 388
    :goto_0
    if-ge v4, v10, :cond_3

    move v3, v2

    .line 390
    :goto_1
    if-ge v3, v10, :cond_2

    move v1, v2

    .line 392
    :goto_2
    if-ge v1, v11, :cond_1

    move v0, v2

    .line 394
    :goto_3
    if-ge v0, v11, :cond_0

    .line 396
    mul-int/lit8 v7, v4, 0x40

    mul-int/lit16 v8, v3, 0x200

    mul-int/lit8 v8, v8, 0x40

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    mul-int/lit16 v8, v0, 0x200

    add-int/2addr v7, v8

    const v8, 0x3ffc0

    mul-int/lit16 v9, v4, 0x200

    mul-int/lit8 v9, v9, 0x40

    sub-int/2addr v8, v9

    mul-int/lit8 v9, v3, 0x40

    mul-int/lit8 v9, v9, 0x40

    sub-int/2addr v8, v9

    add-int/2addr v8, v1

    mul-int/lit8 v9, v0, 0x40

    sub-int/2addr v8, v9

    aget v8, v5, v8

    aput v8, v6, v7

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 392
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 390
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 388
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 402
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v6, v12, v12, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    .line 403
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->b:I

    .line 404
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->c:I

    .line 405
    return-void
.end method

.method public constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;[BIII)V
    .locals 1

    .prologue
    .line 354
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x2

    if-ne p5, v0, :cond_2

    .line 358
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b([BII)[I

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->a([I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->b:I

    .line 377
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->c:I

    .line 379
    :cond_1
    return-void

    .line 363
    :cond_2
    const/4 v0, 0x1

    if-ne p5, v0, :cond_3

    .line 365
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a([BII)[I

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->a([I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 369
    :cond_3
    if-nez p5, :cond_0

    .line 371
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private a([I)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/16 v11, 0x200

    const/16 v10, 0x40

    const/16 v9, 0x8

    const/4 v1, 0x0

    .line 334
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v5

    move v4, v1

    .line 336
    :goto_0
    if-ge v4, v9, :cond_3

    move v3, v1

    .line 338
    :goto_1
    if-ge v3, v9, :cond_2

    move v2, v1

    .line 340
    :goto_2
    if-ge v2, v10, :cond_1

    move v0, v1

    .line 342
    :goto_3
    if-ge v0, v10, :cond_0

    .line 344
    mul-int/lit8 v6, v4, 0x40

    mul-int/lit16 v7, v3, 0x200

    mul-int/lit8 v7, v7, 0x40

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    mul-int/lit16 v7, v0, 0x200

    add-int/2addr v6, v7

    const v7, 0x3ffc0

    mul-int/lit16 v8, v4, 0x200

    mul-int/lit8 v8, v8, 0x40

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x40

    mul-int/lit8 v8, v8, 0x40

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    mul-int/lit8 v8, v0, 0x40

    sub-int/2addr v7, v8

    aget v7, p1, v7

    aput v7, v5, v6

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 340
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 338
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 336
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 351
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v11, v11, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()[I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method
