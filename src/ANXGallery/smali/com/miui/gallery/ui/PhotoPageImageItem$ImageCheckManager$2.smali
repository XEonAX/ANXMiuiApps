.class Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 573
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .line 575
    .local v0, "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, p1, v3}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 578
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->ensureInflated()V

    .line 579
    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0c01f2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 581
    :cond_0
    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 583
    .end local v0    # "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/Object;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/Object;

    .prologue
    .line 587
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .line 589
    .local v0, "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mRenderCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 591
    .end local v0    # "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    :cond_0
    return-void
.end method
