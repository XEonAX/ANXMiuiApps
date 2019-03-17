.class public Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;
.super Landroid/os/AsyncTask;
.source "CloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInternalAccountTask"
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
.field private mRunOnPostExecute:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runOnPostExecute"    # Ljava/lang/Runnable;

    .prologue
    .line 2800
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2801
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->mRunOnPostExecute:Ljava/lang/Runnable;

    .line 2802
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2797
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2810
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->run()V

    .line 2811
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2797
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->mRunOnPostExecute:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2824
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudUtils$CheckInternalAccountTask;->mRunOnPostExecute:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2826
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 2806
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2815
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsInternationalAccount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2816
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->isInternationalAccount(Z)I

    move-result v0

    .line 2817
    .local v0, "result":I
    invoke-static {v0}, Lcom/miui/gallery/util/deprecated/Preference;->sSetIsInternationalAccount(I)V

    .line 2819
    .end local v0    # "result":I
    :cond_0
    return-void
.end method
