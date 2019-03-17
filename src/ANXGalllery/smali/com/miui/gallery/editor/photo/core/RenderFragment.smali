.class public abstract Lcom/miui/gallery/editor/photo/core/RenderFragment;
.super Landroid/app/Fragment;
.source "RenderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/RenderFragment$Callbacks;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEffect:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public final export()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->onExport()Lcom/miui/gallery/editor/photo/core/RenderData;

    move-result-object v0

    .line 78
    .local v0, "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/RenderFragment;->mEffect:Lcom/miui/gallery/editor/photo/core/Effect;

    iput-object v1, v0, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnSupportStringRes()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method public isSupportBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 42
    .local v0, "parent":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/utils/Attachable;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lcom/miui/gallery/editor/photo/utils/Attachable;

    .end local v0    # "parent":Landroid/app/Fragment;
    invoke-interface {v0, p0}, Lcom/miui/gallery/editor/photo/utils/Attachable;->attach(Landroid/app/Fragment;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderFragment;->mEffect:Lcom/miui/gallery/editor/photo/core/Effect;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RenderFragment:effect"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderFragment;->mEffect:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 36
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/RenderFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->clear()V

    .line 52
    return-void
.end method

.method protected abstract onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
.end method

.method protected abstract onSample()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final sample()Ljava/util/List;
    .locals 1
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
    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->onSample()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "pre":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/RenderFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method
