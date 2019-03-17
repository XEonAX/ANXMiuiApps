.class Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$2;
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
    .line 111
    iput-object p1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$2;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$2;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isAllItemsChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 115
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$2;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAllItemsCheckState(Z)V

    .line 116
    if-nez v0, :cond_0

    .line 117
    const-string v1, "cleaner"

    const-string v2, "screenshot_select_all_cancel"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void

    .line 114
    .end local v0    # "checked":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
