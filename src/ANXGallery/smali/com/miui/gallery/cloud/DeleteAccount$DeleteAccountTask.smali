.class Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;
.super Landroid/os/AsyncTask;
.source "DeleteAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/DeleteAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mListener:Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;

.field private mWipeDataStrategy:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wipeDataStrategy"    # I
    .param p3, "listener"    # Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mActivity:Landroid/app/Activity;

    .line 55
    iput p2, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mWipeDataStrategy:I

    .line 56
    iput-object p3, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mListener:Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;

    .line 57
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 70
    iget v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mWipeDataStrategy:I

    invoke-static {v0}, Lcom/miui/gallery/cloud/DeleteAccount;->executeDeleteAccount(I)Z

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mDialog:Landroid/app/ProgressDialog;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mListener:Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mListener:Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;

    invoke-interface {v0}, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;->onFinish()V

    .line 83
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const v2, 0x7f0c0266

    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mActivity:Landroid/app/Activity;

    .line 63
    invoke-static {v0, v2, v2, v1, v1}, Lcom/miui/gallery/util/GalleryUtils;->showProgressDialog(Landroid/content/Context;IIIZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->mDialog:Landroid/app/ProgressDialog;

    .line 66
    :cond_0
    return-void
.end method
