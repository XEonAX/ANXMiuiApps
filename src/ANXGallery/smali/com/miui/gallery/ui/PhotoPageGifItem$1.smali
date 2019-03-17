.class Lcom/miui/gallery/ui/PhotoPageGifItem$1;
.super Landroid/os/Handler;
.source "PhotoPageGifItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageGifItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 58
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 61
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getSuppMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 63
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2, v0}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2, v1}, Luk/co/senab/photoview/PhotoView;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 68
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageGifItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageGifItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-static {v2, v4}, Lcom/miui/gallery/ui/PhotoPageGifItem;->access$000(Lcom/miui/gallery/ui/PhotoPageGifItem;Z)V

    .line 72
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-static {v2, v4, v4}, Lcom/miui/gallery/ui/PhotoPageGifItem;->access$100(Lcom/miui/gallery/ui/PhotoPageGifItem;ZZ)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
