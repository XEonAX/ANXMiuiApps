.class public Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;
.super Lcom/miui/gallery/video/editor/ui/ProgressDialog;
.source "EncodeProgressDialog.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;
.implements Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;
    }
.end annotation


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;

.field private mOutPutPath:Ljava/lang/String;

.field private mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;-><init>()V

    .line 79
    return-void
.end method

.method public static startEncode(Lcom/miui/gallery/video/editor/VideoEditor;Ljava/lang/String;Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;Landroid/app/FragmentManager;)V
    .locals 3
    .param p0, "videoEditor"    # Lcom/miui/gallery/video/editor/VideoEditor;
    .param p1, "outPutFilePath"    # Ljava/lang/String;
    .param p2, "onCompletedListener"    # Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 19
    new-instance v1, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;

    invoke-direct {v1}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;-><init>()V

    .line 20
    .local v1, "dialog":Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setArguments(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {v1, p0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setVideoEditor(Lcom/miui/gallery/video/editor/VideoEditor;)V

    .line 24
    invoke-virtual {v1, p2}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setOnCompletedListener(Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;)V

    .line 25
    invoke-virtual {v1, p3}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setFragmentManager(Landroid/app/FragmentManager;)V

    .line 26
    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->export(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onCancelClicked()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->cancelExport(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setProgressDialogInterface(Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;)V

    .line 46
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setMax(I)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mOutPutPath:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public onEncodeEnd(ZII)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # I
    .param p3, "state"    # I

    .prologue
    .line 72
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setProgress(I)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mOutPutPath:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;->onCompleted(Ljava/lang/String;ZII)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->dismissSafely()V

    .line 77
    return-void
.end method

.method public onEncodeProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setProgress(I)V

    .line 68
    return-void
.end method

.method public onEncodeStart()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "EncodeProgressDialog"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 62
    const v0, 0x7f0c052b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->setMsg(I)V

    .line 63
    return-void
.end method

.method public setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 32
    return-void
.end method

.method public setOnCompletedListener(Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;)V
    .locals 0
    .param p1, "onCompletedListener"    # Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mOnCompletedListener:Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;

    .line 36
    return-void
.end method

.method public setVideoEditor(Lcom/miui/gallery/video/editor/VideoEditor;)V
    .locals 0
    .param p1, "videoEditor"    # Lcom/miui/gallery/video/editor/VideoEditor;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    .line 40
    return-void
.end method
