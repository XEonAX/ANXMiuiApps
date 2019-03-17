.class Lcom/miui/gallery/picker/PickGalleryActivity$2;
.super Ljava/lang/Object;
.source "PickGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 651
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const v1, 0x7f0c03c6

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 653
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1100(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$2;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    goto :goto_0
.end method
