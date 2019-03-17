.class Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;
.super Landroid/os/AsyncTask;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mLoadListener:Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "loadListener"    # Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->mLoadListener:Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;

    .line 96
    iput-object p2, p0, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->doInBackground([Landroid/net/Uri;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)[Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 103
    .local v2, "param":Landroid/net/Uri;
    iget-object v5, p0, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/miui/gallery/collage/BitmapManager;->loadSuitableBitmapOnScreen(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "param":Landroid/net/Uri;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/Bitmap;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Bitmap;

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->onPostExecute([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute([Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->mLoadListener:Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->mLoadListener:Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;->onBitmapLoad([Landroid/graphics/Bitmap;)V

    .line 118
    :cond_0
    return-void
.end method
