.class public Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;
.super Landroid/widget/LinearLayout;
.source "MoviePreviewMenuBottomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;
    }
.end annotation


# instance fields
.field private mEditView:Landroid/widget/TextView;

.field private mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

.field private mPlayArea:Landroid/view/View;

.field private mPlayView:Landroid/widget/ImageView;

.field private mPreViewBottomView:Landroid/view/View;

.field private mSaveView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const v0, 0x7f0400bb

    invoke-static {p1, v0, p0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    if-nez v1, :cond_0

    .line 56
    const-string v1, "MoviePreviewMenuBottomView"

    const-string/jumbo v2, "the listener is null . "

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 60
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    invoke-interface {v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;->onEditBtnClick()V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    invoke-interface {v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;->onSaveBtnClick()V

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    invoke-interface {v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;->onPlayAreaClick()V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x7f1201d4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 38
    const v0, 0x7f1201d3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mPreViewBottomView:Landroid/view/View;

    .line 39
    const v0, 0x7f1201d5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mPlayArea:Landroid/view/View;

    .line 40
    const v0, 0x7f1201d7

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mSaveView:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f1201d4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mEditView:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f1201d6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mPlayView:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mPreViewBottomView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mSaveView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mEditView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mPlayArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    .line 84
    return-void
.end method

.method public setIMenuBottomViewClickListener(Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    .line 80
    return-void
.end method

.method public updatePlayBtnState(Z)V
    .locals 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mPlayView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->mPlayView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c02c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c02c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
