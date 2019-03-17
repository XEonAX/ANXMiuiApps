.class public Lcom/alibaba/imagesearch/utils/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/imagesearch/utils/b$a;,
        Lcom/alibaba/imagesearch/utils/b$b;,
        Lcom/alibaba/imagesearch/utils/b$d;,
        Lcom/alibaba/imagesearch/utils/b$c;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/imagesearch/utils/b;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v2, :cond_1

    int-to-float v0, p1

    int-to-float v1, v3

    mul-float/2addr v1, v5

    int-to-float v4, v2

    div-float/2addr v1, v4

    mul-float/2addr v1, v5

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    :goto_0
    const/4 v0, 0x1

    if-gt v2, p1, :cond_0

    if-le v3, v1, :cond_2

    :cond_0
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    :goto_1
    div-int v4, v2, v0

    if-le v4, p1, :cond_2

    div-int v4, v3, v0

    if-le v4, v1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    int-to-float v0, p1

    int-to-float v1, v2

    mul-float/2addr v1, v5

    int-to-float v4, v3

    div-float/2addr v1, v4

    mul-float/2addr v1, v5

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, p1

    move p1, v0

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v7, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_3

    if-le v1, p4, :cond_2

    int-to-float v2, p4

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_2
    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, p2

    mul-float/2addr v1, v0

    int-to-float v2, p3

    mul-float/2addr v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :try_start_0
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    if-le v2, p4, :cond_2

    int-to-float v1, p4

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v0, 0x2

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v0, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/alibaba/imagesearch/utils/b$a;
    .locals 8

    const/4 v7, 0x0

    new-instance v6, Lcom/alibaba/imagesearch/utils/b$a;

    invoke-direct {v6, v7}, Lcom/alibaba/imagesearch/utils/b$a;-><init>(Lcom/alibaba/imagesearch/utils/b$1;)V

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/alibaba/imagesearch/utils/b$a;->b:Ljava/lang/String;

    :try_start_0
    sget-object v2, Lcom/alibaba/imagesearch/utils/b;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/imagesearch/utils/b$a;->c:Ljava/lang/String;

    const-string v0, "orientation"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/imagesearch/utils/b$a;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v7

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    move-object v0, v6

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_6

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;I)Lcom/alibaba/imagesearch/utils/b$c;
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0, p1}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/alibaba/imagesearch/utils/b$a;

    move-result-object v1

    iget-object v0, v1, Lcom/alibaba/imagesearch/utils/b$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/alibaba/imagesearch/utils/b$a;->c:Ljava/lang/String;

    invoke-static {v0, p2, v3}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;II)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alibaba/imagesearch/utils/b$a;->a()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v3, v3, p2}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/alibaba/imagesearch/utils/b$c;I)Lcom/alibaba/imagesearch/utils/b$c;
    .locals 6

    const/16 v4, 0x10e

    const/16 v3, 0x5a

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, "start handle LocalImage"

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogD(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handled LocalImage is null localImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogE(Ljava/lang/String;)V

    :goto_0
    return-object p1

    :cond_1
    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v1, v0

    :goto_1
    :pswitch_1
    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_3

    :cond_2
    iget v3, p1, Lcom/alibaba/imagesearch/utils/b$c;->c:I

    iget v4, p1, Lcom/alibaba/imagesearch/utils/b$c;->d:I

    iput v4, p1, Lcom/alibaba/imagesearch/utils/b$c;->c:I

    iput v3, p1, Lcom/alibaba/imagesearch/utils/b$c;->d:I

    :cond_3
    iget-object v3, p1, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/b;->b(Landroid/content/Context;)Lcom/alibaba/imagesearch/utils/b$b;

    move-result-object v4

    iget v4, v4, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    invoke-static {v3, v2, v1, v0, v4}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Lcom/alibaba/imagesearch/utils/b$c;->e:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p1, Lcom/alibaba/imagesearch/utils/b$c;->f:I

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/b;->b(Landroid/content/Context;)Lcom/alibaba/imagesearch/utils/b$b;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/imagesearch/utils/b$b;->a:I

    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localImage scaled w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scaled h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogD(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move v1, v0

    move v2, v3

    goto :goto_1

    :pswitch_3
    const/16 v1, 0xb4

    move v2, v1

    move v1, v0

    goto :goto_1

    :pswitch_4
    move v1, v0

    move v2, v4

    goto :goto_1

    :pswitch_5
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/imagesearch/utils/b$c;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/b;->b(Landroid/content/Context;)Lcom/alibaba/imagesearch/utils/b$b;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v1, v2, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    invoke-static {p1, v1, v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;II)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/imagesearch/utils/b;->b(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;Lcom/alibaba/imagesearch/utils/b$c;I)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v5, "file"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget v2, v2, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    invoke-static {v1, v2, v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;II)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v5, "content"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v1, v2, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    invoke-static {p0, v3, v1}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;Landroid/net/Uri;I)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B)Lcom/alibaba/imagesearch/utils/b$c;
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/b;->b(Landroid/content/Context;)Lcom/alibaba/imagesearch/utils/b$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current ImageRule is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogD(Ljava/lang/String;)V

    iget v0, v0, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    invoke-static {p1, v0, v3}, Lcom/alibaba/imagesearch/utils/b;->a([BII)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;Lcom/alibaba/imagesearch/utils/b$c;I)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;II)Lcom/alibaba/imagesearch/utils/b$c;
    .locals 3

    new-instance v0, Lcom/alibaba/imagesearch/utils/b$c;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/utils/b$c;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "filePath is empty"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v0, Lcom/alibaba/imagesearch/utils/b$c;->c:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v0, Lcom/alibaba/imagesearch/utils/b$c;->d:I

    invoke-static {v1, p1}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    mul-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v1, "BitmapFactory.decodeFile return null"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/alibaba/imagesearch/utils/b;->a(Ljava/lang/String;II)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([BII)Lcom/alibaba/imagesearch/utils/b$c;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeBitmapFromBytes scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogD(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/imagesearch/utils/b$c;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/utils/b$c;-><init>()V

    if-nez p0, :cond_0

    const-string v1, "decodeBitmapFromBytes bytes = null"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogE(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v0, Lcom/alibaba/imagesearch/utils/b$c;->c:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v0, Lcom/alibaba/imagesearch/utils/b$c;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inJustDecodeBounds localImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogD(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    mul-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateInSampleSize inSampleSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogD(Ljava/lang/String;)V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeByteArray localImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "OutOfMemoryError"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogE(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/alibaba/imagesearch/utils/b;->a([BII)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-static {p1, v2, p2, p3}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, p2, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_3

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_3
    :goto_4
    throw v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v3, v2

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractOrientationFromFile IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->imgHandleLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/alibaba/imagesearch/utils/b$b;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b$d;->a(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/alibaba/imagesearch/utils/b$b;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/imagesearch/utils/b$b;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/alibaba/imagesearch/utils/b$b;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/imagesearch/utils/b$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alibaba/imagesearch/utils/b$b;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/imagesearch/utils/b$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alibaba/imagesearch/utils/b$b;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/imagesearch/utils/b$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alibaba/imagesearch/utils/b$b;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/imagesearch/utils/b$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
