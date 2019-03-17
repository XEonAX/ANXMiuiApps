.class public abstract Lcom/miui/gallery/picker/PickerCompatFragment;
.super Lmiui/app/Fragment;
.source "PickerCompatFragment.java"


# static fields
.field private static IMAGE_LOADER_USED_COUNT:I


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mUserFirstVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/picker/PickerCompatFragment;->IMAGE_LOADER_USED_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickerCompatFragment;->mUserFirstVisible:Z

    return-void
.end method


# virtual methods
.method protected abstract getPageName()Ljava/lang/String;
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f110012

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 21
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerCompatFragment;->mActivity:Landroid/app/Activity;

    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->getThemeRes()I

    move-result v0

    .line 33
    .local v0, "themeRes":I
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lcom/miui/gallery/picker/PickerCompatFragment;->setThemeRes(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lmiui/app/Fragment;->onDetach()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerCompatFragment;->mActivity:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lmiui/app/Fragment;->onPause()V

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->useImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget v0, Lcom/miui/gallery/picker/PickerCompatFragment;->IMAGE_LOADER_USED_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/miui/gallery/picker/PickerCompatFragment;->IMAGE_LOADER_USED_COUNT:I

    .line 58
    sget v0, Lcom/miui/gallery/picker/PickerCompatFragment;->IMAGE_LOADER_USED_COUNT:I

    if-gtz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/picker/PickerCompatFragment;->IMAGE_LOADER_USED_COUNT:I

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->recordPageByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerCompatFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lmiui/app/Fragment;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->useImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget v0, Lcom/miui/gallery/picker/PickerCompatFragment;->IMAGE_LOADER_USED_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/gallery/picker/PickerCompatFragment;->IMAGE_LOADER_USED_COUNT:I

    .line 74
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->recordPageByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerCompatFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method

.method protected onUserFirstVisible()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Lmiui/app/Fragment;->setUserVisibleHint(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickerCompatFragment;->mUserFirstVisible:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatFragment;->onUserFirstVisible()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickerCompatFragment;->mUserFirstVisible:Z

    .line 89
    :cond_0
    return-void
.end method

.method protected useImageLoader()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
