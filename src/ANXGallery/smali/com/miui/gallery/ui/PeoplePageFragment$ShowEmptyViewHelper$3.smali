.class Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showSwitchClosedTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0, v3}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->setFaceAlbumStatus(Landroid/content/Context;Z)V

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->access$200(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PeoplePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PeoplePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    iget-object v2, v2, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$300(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 187
    const-string v0, "people"

    const-string v1, "people_open_switch"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method
