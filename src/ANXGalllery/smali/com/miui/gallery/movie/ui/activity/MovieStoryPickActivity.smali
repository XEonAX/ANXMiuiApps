.class public Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;
.super Lcom/miui/gallery/picker/PickerActivity;
.source "MovieStoryPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;
    }
.end annotation


# instance fields
.field private mMediaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

.field private mPickIntent:Landroid/content/Intent;

.field private mPickStoryFragment:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

.field private mSelectedPhotoSha1s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerActivity;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mMediaInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mMediaInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;)Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;
    .param p1, "x1"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mSelectedPhotoSha1s:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mSelectedPhotoSha1s:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Lcom/miui/gallery/picker/helper/Picker;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    return-object v0
.end method


# virtual methods
.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x1020002

    return v0
.end method

.method public getResultIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickIntent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->onCancel()V

    .line 70
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->finish()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f1000e1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->initActionBar()V

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickIntent:Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "StoryMoviePickFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickStoryFragment:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickStoryFragment:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-direct {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickStoryFragment:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickStoryFragment:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    const-string v1, "StoryMoviePickFragment"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 173
    iput-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mPickIntent:Landroid/content/Intent;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->cancel(Z)Z

    .line 179
    :cond_1
    iput-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    .line 181
    :cond_2
    return-void
.end method

.method protected onDone()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$1;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->mParseTask:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "MovieStoryPickActivity"

    const-string v1, "parse task is running, skip"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
