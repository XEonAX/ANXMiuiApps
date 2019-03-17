.class Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;
.super Lcom/miui/extraphoto/sdk/BaseEchoListener;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EchoListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-direct {p0}, Lcom/miui/extraphoto/sdk/BaseEchoListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;)V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 706
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    const-string v0, "PhotoPageImageItem"

    const-string/jumbo v1, "view has detached from window"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->access$2000(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;)V

    .line 711
    if-eqz p2, :cond_0

    .line 712
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->refreshItem()V

    goto :goto_0

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;->notifyDataChanged()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method
