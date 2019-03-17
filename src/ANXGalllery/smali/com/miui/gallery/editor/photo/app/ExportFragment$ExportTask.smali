.class Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;
.super Landroid/os/AsyncTask;
.source "ExportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/ExportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/editor/photo/app/ExportFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/ExportFragment;)V
    .locals 1
    .param p1, "exportFragment"    # Lcom/miui/gallery/editor/photo/app/ExportFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->mFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 57
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->mFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/ExportFragment;

    .line 58
    .local v1, "exportFragment":Lcom/miui/gallery/editor/photo/app/ExportFragment;
    if-eqz v1, :cond_0

    .line 59
    iget-object v0, v1, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    .line 60
    .local v0, "callbacks":Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;->doExport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 64
    .end local v0    # "callbacks":Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->mFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/ExportFragment;

    .line 71
    .local v0, "exportFragment":Lcom/miui/gallery/editor/photo/app/ExportFragment;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->access$000(Lcom/miui/gallery/editor/photo/app/ExportFragment;Ljava/lang/Boolean;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
