.class public Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;
.super Landroid/app/Fragment;
.source "DoodleGesFragment.java"


# instance fields
.field private mCurrentColor:I

.field private mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

.field private mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;)Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const v1, 0x7f040068

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 19
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    .line 20
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->setPaintSizeChangeListener(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mCurrentColor:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->setPaintColor(I)V

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    new-instance v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mCurrentColor:I

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->setPaintColor(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public setPaintSizeChangeListener(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;)V
    .locals 2
    .param p1, "paintSizeChangeListener"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSelectView:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->setPaintSizeChangeListener(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;)V

    .line 42
    :cond_0
    return-void
.end method
