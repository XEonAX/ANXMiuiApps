.class final Lcom/nostra13/universalimageloader/cache/disc/DiskCache$1;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiskCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "imageStream"    # Ljava/io/InputStream;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
