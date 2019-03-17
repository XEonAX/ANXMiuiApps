.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;
.super Ljava/lang/Object;
.source "ThumbnailConversionTask.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/kinemaster/mediainfo/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/task/Task$TaskError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Canvas;

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/Paint;

.field final synthetic g:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->g:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;III)V
    .locals 8

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/16 v5, 0x280

    const/16 v4, 0x168

    const/4 v3, 0x0

    .line 100
    if-nez p2, :cond_0

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->a:I

    .line 102
    mul-int/lit16 v0, p3, 0xa0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->b:I

    .line 103
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->b:I

    iget v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->c:Landroid/graphics/Bitmap;

    .line 104
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->g:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 105
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->d:Landroid/graphics/Canvas;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xa0

    const/16 v2, 0x5a

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->e:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->f:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 109
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->g:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;

    new-array v1, p3, [I

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;[I)[I

    .line 110
    const-string v0, "KMMediaInfo_ThumbConv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRawFile : totalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->g:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;)[I

    move-result-object v0

    aput p4, v0, p2

    .line 115
    if-nez p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->e:Landroid/graphics/Rect;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 140
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez p2, :cond_3

    .line 121
    const-string v0, "KMMediaInfo_ThumbConv"

    const-string v1, "Make large thumnail at i==0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->g:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;

    invoke-static {v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 133
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->d:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->d:Landroid/graphics/Canvas;

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 135
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v6, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->d:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 137
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->d:Landroid/graphics/Canvas;

    const/high16 v1, 0x43200000    # 160.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 126
    :cond_3
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_2

    .line 127
    const-string v0, "KMMediaInfo_ThumbConv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make large end thumnail at i=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f$1;->g:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;

    invoke-static {v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;->c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1
.end method
