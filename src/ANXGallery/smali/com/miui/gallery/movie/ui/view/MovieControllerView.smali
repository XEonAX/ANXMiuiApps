.class public Lcom/miui/gallery/movie/ui/view/MovieControllerView;
.super Lcom/miui/gallery/movie/ui/view/BaseMovieView;
.source "MovieControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;,
        Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;
    }
.end annotation


# instance fields
.field private isLoopPlay:Z

.field private mCurrentTime:I

.field private mDeleteVisible:Z

.field private mDeleteVisibleListener:Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;

.field private mIgnoreProgressHide:Z

.field private mIsSeekDisable:Z

.field private mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

.field private mPlayProgressVisible:Z

.field private mProgressChangeListener:Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

.field private mShowDeleteMode:Z

.field private mShowPlayBtnMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mIsSeekDisable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 11
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mCurrentTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/movie/ui/view/MovieControllerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mCurrentTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mProgressChangeListener:Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mIgnoreProgressHide:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/movie/ui/view/MovieControllerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mIgnoreProgressHide:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->isLoopPlay:Z

    return v0
.end method


# virtual methods
.method protected createDisplayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->getDisplayView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/factory/MovieFactory;->createMovieManager(Landroid/content/Context;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    .line 54
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->init()V

    .line 55
    new-instance v0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;-><init>(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setProgressChangeListener(Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    new-instance v1, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;-><init>(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/core/MovieManager;->addStateChangeListener(Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;)V

    .line 150
    return-void
.end method

.method public init(Lcom/miui/gallery/movie/core/MovieManager;)V
    .locals 0
    .param p1, "movieManager"    # Lcom/miui/gallery/movie/core/MovieManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->init()V

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->onPause()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->onResume()V

    .line 174
    return-void
.end method

.method public setCurrentPlayTime(IF)V
    .locals 1
    .param p1, "currentTime"    # I
    .param p2, "percent"    # F

    .prologue
    .line 153
    iput p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mCurrentTime:I

    .line 154
    invoke-virtual {p0, p2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->updatePlayProgress(F)V

    .line 155
    div-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDuration(I)V

    .line 156
    return-void
.end method

.method public setDeleteVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 226
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mDeleteVisible:Z

    if-ne v0, p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mDeleteVisibleListener:Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mDeleteVisibleListener:Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;->onChanged(Z)V

    .line 232
    :cond_1
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mDeleteVisible:Z

    .line 233
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mShowDeleteMode:Z

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDeleteIcon(Z)V

    .line 235
    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDuration(Z)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDeleteIcon(Z)V

    .line 238
    invoke-virtual {p0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDuration(Z)V

    goto :goto_0
.end method

.method public setDeleteVisibleListener(Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;)V
    .locals 0
    .param p1, "deleteVisibleListener"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mDeleteVisibleListener:Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;

    .line 248
    return-void
.end method

.method public setLoopPlay(Z)V
    .locals 0
    .param p1, "loopPlay"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->isLoopPlay:Z

    .line 256
    return-void
.end method

.method public setMovieInfo(Lcom/miui/gallery/movie/entity/MovieInfo;)V
    .locals 1
    .param p1, "movieInfo"    # Lcom/miui/gallery/movie/entity/MovieInfo;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/core/MovieManager;->setInfo(Lcom/miui/gallery/movie/entity/MovieInfo;)V

    .line 252
    return-void
.end method

.method public setPlayProgressVisible(Z)V
    .locals 1
    .param p1, "playProgressVisible"    # Z

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mPlayProgressVisible:Z

    if-ne v0, p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mPlayProgressVisible:Z

    .line 189
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mPlayProgressVisible:Z

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPlayProgress(Z)V

    goto :goto_0
.end method

.method public setProgressChangeListener(Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;)V
    .locals 0
    .param p1, "progressChangeListener"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mProgressChangeListener:Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    .line 223
    return-void
.end method

.method public setSeekDisable(Z)V
    .locals 0
    .param p1, "seekDisable"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mIsSeekDisable:Z

    .line 260
    return-void
.end method

.method public setShowDeleteMode(Z)V
    .locals 3
    .param p1, "showDeleteMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mShowDeleteMode:Z

    if-ne v0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mShowDeleteMode:Z

    .line 212
    if-nez p1, :cond_2

    .line 213
    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDeleteIcon(Z)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDuration(Z)V

    goto :goto_0

    .line 215
    :cond_2
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mDeleteVisible:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDeleteIcon(Z)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showDuration(Z)V

    goto :goto_0
.end method

.method public setShowPlayBtnMode(Z)V
    .locals 2
    .param p1, "showPlayBtnMode"    # Z

    .prologue
    .line 193
    iget-boolean v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mShowPlayBtnMode:Z

    if-ne v1, p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mShowPlayBtnMode:Z

    .line 197
    if-nez p1, :cond_2

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPlayBtn(Z)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/core/MovieManager;->getState()I

    move-result v0

    .line 201
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 202
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPlayBtn(Z)V

    goto :goto_0
.end method

.method public showPlayBtn(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->mShowPlayBtnMode:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-super {p0, p1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showPlayBtn(Z)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showPlayBtn(Z)V

    goto :goto_0
.end method
