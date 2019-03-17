.class public Lcom/miui/gallery/ui/ImageSelectionTipFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "ImageSelectionTipFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;
    }
.end annotation


# instance fields
.field private mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ImageSelectionTipFragment;)Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ImageSelectionTipFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/ImageSelectionTipFragment;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ImageSelectionTipFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->onDone(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private onDone(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public static showImageSelectionTipDialogIfNecessary(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    :cond_0
    const-string v1, "ImageSelectionTipFragment"

    const-string v2, "activity is null or finishing ,no need to show selection tip dialog"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->shouldShowImageSelectionTip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-static {v2}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setIsFirstShowImageSelection(Z)V

    .line 31
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->setFirstShowImageSelection(Z)V

    .line 32
    new-instance v0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;-><init>()V

    .line 33
    .local v0, "dialogFragment":Lcom/miui/gallery/ui/ImageSelectionTipFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ImageSelectionTip"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->onDone(Landroid/content/DialogInterface;)V

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;-><init>(Lcom/miui/gallery/ui/ImageSelectionTipFragment;Landroid/content/Context;)V

    new-instance v1, Lcom/miui/gallery/ui/ImageSelectionTipFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$1;-><init>(Lcom/miui/gallery/ui/ImageSelectionTipFragment;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->mImageSelectionTipDialog:Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->onDone(Landroid/content/DialogInterface;)V

    .line 60
    return-void
.end method
