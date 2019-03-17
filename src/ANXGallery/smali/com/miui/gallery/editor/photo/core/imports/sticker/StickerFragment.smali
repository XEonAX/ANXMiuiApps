.class public Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mData:Ljava/util/List;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V
    .locals 7
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 52
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .line 54
    .local v0, "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->INSTANCE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->fromCache(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    iget-object v3, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->content:Ljava/lang/String;

    iget-wide v4, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    iget-object v6, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->cateName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->add(Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->INSTANCE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    check-cast p1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .end local p1    # "effect":Lcom/miui/gallery/editor/photo/core/Metadata;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->touch(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)V

    .line 62
    return-void

    .line 57
    .restart local p1    # "effect":Lcom/miui/gallery/editor/photo/core/Metadata;
    :cond_0
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->onClear()V

    .line 86
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 32
    const v3, 0x7f04006e

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .local v0, "layout":Landroid/view/ViewGroup;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .line 34
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 37
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 38
    .local v2, "paddingTop":I
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v3, v1, v2, v1, v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->setPadding(IIII)V

    .line 40
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v0, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 41
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->onDestroy()V

    .line 92
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onDestroyView()V

    .line 47
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->INSTANCE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->writeRecentToFile()V

    .line 48
    return-void
.end method

.method public onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->export()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerRenderData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;)V

    return-object v0
.end method

.method protected onSample()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getCacheNode()Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 109
    .local v2, "node":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    iget-object v0, v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mStickerCateName:Ljava/lang/String;

    .line 110
    .local v0, "cateName":Ljava/lang/String;
    iget-wide v6, v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->mStickerId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "id":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(%s)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "cateName":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "node":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    :cond_0
    return-object v4
.end method

.method public remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V
    .locals 0
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 66
    return-void
.end method

.method public render()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->mStickerEditorView:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_0
    return-void
.end method
