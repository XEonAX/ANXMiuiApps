.class public Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "CropperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/CropperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportFragment"
.end annotation


# instance fields
.field private mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCropper:Lcom/miui/gallery/editor/photo/app/CropperActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 420
    new-instance v0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;)Lcom/miui/gallery/editor/photo/app/CropperActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->mCropper:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 398
    instance-of v0, p1, Lcom/miui/gallery/editor/photo/app/CropperActivity;

    if-eqz v0, :cond_0

    .line 399
    check-cast p1, Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->mCropper:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .line 403
    return-void

    .line 401
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t attach to install of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 408
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 409
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 413
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->mCropper:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 415
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0373

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 417
    return-object v0
.end method
