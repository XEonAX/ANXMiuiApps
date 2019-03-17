.class Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;
.super Landroid/database/DataSetObserver;
.source "ScreenshotPhotoPickFragment.java"


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
    .line 123
    iput-object p1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$300(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$400(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$302(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;Z)Z

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAllItemsCheckState(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$500(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V

    .line 131
    return-void
.end method
