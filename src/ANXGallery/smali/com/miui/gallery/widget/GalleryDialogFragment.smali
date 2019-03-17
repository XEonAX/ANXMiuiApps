.class public Lcom/miui/gallery/widget/GalleryDialogFragment;
.super Landroid/app/DialogFragment;
.source "GalleryDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissSafely()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 31
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 34
    :cond_0
    return-void
.end method

.method public showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/widget/GalleryDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "ignore":Ljava/lang/IllegalStateException;
    const-string v1, "GalleryDialogFragment"

    const-string v2, "%s : showAllowingStateLoss ignore:%s"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
