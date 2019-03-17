.class public Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;
.super Lcom/miui/gallery/video/editor/ui/ProgressDialog;
.source "AutoTrimProgressDialog.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;
.implements Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;
    }
.end annotation


# instance fields
.field private mCurrentWorkState:I

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;

.field private mOutPutFilePath:Ljava/lang/String;

.field private mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mCurrentWorkState:I

    .line 99
    return-void
.end method

.method public static startAutoTrim(Lcom/miui/gallery/video/editor/VideoEditor;Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;Landroid/app/FragmentManager;)V
    .locals 1
    .param p0, "videoEditor"    # Lcom/miui/gallery/video/editor/VideoEditor;
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 24
    new-instance v0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;-><init>()V

    .line 25
    .local v0, "dialog":Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setVideoEditor(Lcom/miui/gallery/video/editor/VideoEditor;)V

    .line 26
    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setOnCompletedListener(Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;)V

    .line 27
    invoke-virtual {v0, p2}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/VideoEditor;->autoTrim(Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onCancelClicked()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mCurrentWorkState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->cancelExport(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setCancleButtonEnable(Z)V

    .line 47
    invoke-virtual {p0, p0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setProgressDialogInterface(Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;)V

    .line 48
    return-void
.end method

.method public onEncodeEnd(ZII)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "errorCode"    # I
    .param p3, "state"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mOutPutFilePath:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;->onCompleted(ZLjava/lang/String;ILjava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->dismissSafely()V

    .line 97
    return-void
.end method

.method public onEncodeProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 87
    const/high16 v1, 0x42be0000    # 95.0f

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x5

    .line 88
    .local v0, "progressValue":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setProgress(I)V

    .line 89
    return-void
.end method

.method public onEncodeStart()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mCurrentWorkState:I

    .line 81
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setProgress(I)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setCancleButtonEnable(Z)V

    .line 83
    return-void
.end method

.method public onTrimEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "outputFileURI"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mOutPutFilePath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public onTrimProgress(I)V
    .locals 4
    .param p1, "progresss"    # I

    .prologue
    .line 69
    const/high16 v1, 0x40a00000    # 5.0f

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 70
    .local v0, "progressValue":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setProgress(I)V

    .line 71
    return-void
.end method

.method public onTrimStart()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "AutoTrimProgressDialog"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mCurrentWorkState:I

    .line 62
    const v0, 0x7f0c0520

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setMsg(I)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->setCancelable(Z)V

    .line 64
    return-void
.end method

.method public setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 33
    return-void
.end method

.method public setOnCompletedListener(Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;)V
    .locals 0
    .param p1, "onCompletedListener"    # Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog$OnCompletedListener;

    .line 37
    return-void
.end method

.method public setVideoEditor(Lcom/miui/gallery/video/editor/VideoEditor;)V
    .locals 0
    .param p1, "videoEditor"    # Lcom/miui/gallery/video/editor/VideoEditor;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AutoTrimProgressDialog;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    .line 41
    return-void
.end method
