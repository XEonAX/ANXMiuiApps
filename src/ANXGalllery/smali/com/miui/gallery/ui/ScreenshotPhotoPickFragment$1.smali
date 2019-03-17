.class Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;
.super Ljava/lang/Object;
.source "ScreenshotPhotoPickFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v9

    .line 83
    .local v9, "ids":[J
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    iget-object v1, v0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "ScreenshotPhotoPickFragmentDeleteMediaDialogFragment"

    new-instance v3, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;-><init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;)V

    const-wide/16 v4, -0x1

    const-string v6, ""

    const/4 v7, 0x2

    const/16 v8, 0x2e

    invoke-static/range {v1 .. v9}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->delete(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;JLjava/lang/String;II[J)V

    .line 108
    :cond_0
    return-void
.end method
