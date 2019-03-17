.class Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;
.super Landroid/os/AsyncTask;
.source "MiuiBeautyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetectFaceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 396
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;->mFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 397
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;->mFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .line 402
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->detectFaceNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 405
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "faceNum"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 415
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 416
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;->mFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .line 417
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->setDetectFace(Z)V

    .line 419
    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->setDetectTaskDone(Z)V

    .line 421
    :cond_0
    return-void

    .line 418
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 392
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 411
    return-void
.end method
