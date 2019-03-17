.class Lcom/miui/gallery/collage/BitmapManager$2;
.super Ljava/lang/Object;
.source "BitmapManager.java"

# interfaces
.implements Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/BitmapManager;->replaceBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/BitmapManager;

.field final synthetic val$from:Landroid/graphics/Bitmap;

.field final synthetic val$target:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/BitmapManager;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    iput-object p2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->val$from:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/miui/gallery/collage/BitmapManager$2;->val$target:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoad([Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 57
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 58
    .local v1, "to":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$100(Lcom/miui/gallery/collage/BitmapManager;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$100(Lcom/miui/gallery/collage/BitmapManager;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/gallery/collage/BitmapManager$2;->val$from:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_2

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$100(Lcom/miui/gallery/collage/BitmapManager;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v1, v2, v0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$000(Lcom/miui/gallery/collage/BitmapManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/collage/BitmapManager$2;->val$from:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$000(Lcom/miui/gallery/collage/BitmapManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/collage/BitmapManager$2;->val$target:Landroid/net/Uri;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$200(Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager$2;->this$0:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v2}, Lcom/miui/gallery/collage/BitmapManager;->access$200(Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/collage/BitmapManager$2;->val$from:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v1}, Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;->onBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 69
    :cond_1
    return-void

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
