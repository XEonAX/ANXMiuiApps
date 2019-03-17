.class Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$1;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 557
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 560
    if-eqz p2, :cond_1

    .line 561
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isMediaInProcessing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Luk/co/senab/photoview/PhotoView;->setRegionDecodeEnable(Z)V

    .line 566
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->refreshItem()V

    .line 567
    return-void

    .line 563
    :cond_1
    const v1, 0x7f0c01f1

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setText(I)V

    goto :goto_0
.end method
