.class public abstract Lcom/miui/gallery/collage/app/common/CollageMenuFragment;
.super Landroid/app/Fragment;
.source "CollageMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/miui/gallery/collage/core/CollagePresenter;",
        "R:",
        "Lcom/miui/gallery/collage/app/common/CollageRenderFragment;",
        ">",
        "Landroid/app/Fragment;"
    }
.end annotation


# instance fields
.field protected mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lcom/miui/gallery/collage/app/common/CollageMenuFragment;, "Lcom/miui/gallery/collage/app/common/CollageMenuFragment<TP;TR;>;"
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/collage/app/common/CollageMenuFragment;, "Lcom/miui/gallery/collage/app/common/CollageMenuFragment<TP;TR;>;"
    iget-object v0, p0, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    .local p0, "this":Lcom/miui/gallery/collage/app/common/CollageMenuFragment;, "Lcom/miui/gallery/collage/app/common/CollageMenuFragment<TP;TR;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method public setPresenter(Lcom/miui/gallery/collage/core/CollagePresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/miui/gallery/collage/app/common/CollageMenuFragment;, "Lcom/miui/gallery/collage/app/common/CollageMenuFragment<TP;TR;>;"
    .local p1, "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;, "TP;"
    iput-object p1, p0, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    .line 20
    return-void
.end method

.method public setRenderFragment(Lcom/miui/gallery/collage/app/common/CollageRenderFragment;)V
    .locals 0
    .param p1, "collageRenderFragment"    # Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    .prologue
    .line 27
    .local p0, "this":Lcom/miui/gallery/collage/app/common/CollageMenuFragment;, "Lcom/miui/gallery/collage/app/common/CollageMenuFragment<TP;TR;>;"
    iput-object p1, p0, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    .line 28
    return-void
.end method
