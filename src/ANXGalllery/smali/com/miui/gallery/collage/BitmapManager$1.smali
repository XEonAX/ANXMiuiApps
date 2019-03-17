.class Lcom/miui/gallery/collage/BitmapManager$1;
.super Ljava/lang/Object;
.source "BitmapManager.java"

# interfaces
.implements Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/BitmapManager;->loadBitmapAsync([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/BitmapManager;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/BitmapManager;[Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/collage/BitmapManager$1;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    iput-object p2, p0, Lcom/miui/gallery/collage/BitmapManager$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoad([Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 39
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$1;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$000(Lcom/miui/gallery/collage/BitmapManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 40
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$1;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2, p1}, Lcom/miui/gallery/collage/BitmapManager;->access$102(Lcom/miui/gallery/collage/BitmapManager;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 42
    aget-object v0, p1, v1

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$1;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$000(Lcom/miui/gallery/collage/BitmapManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/collage/BitmapManager$1;->val$uris:[Landroid/net/Uri;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$1;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$200(Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$1;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$200(Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;->onBitmapLoad([Landroid/graphics/Bitmap;)V

    .line 48
    :cond_1
    return-void
.end method
