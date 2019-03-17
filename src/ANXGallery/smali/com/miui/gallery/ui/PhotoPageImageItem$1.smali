.class final Lcom/miui/gallery/ui/PhotoPageImageItem$1;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;->getBitmapRecycleCallback()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 254
    invoke-static {}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getInstance()Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->put(Landroid/graphics/Bitmap;)V

    .line 255
    return-void
.end method
