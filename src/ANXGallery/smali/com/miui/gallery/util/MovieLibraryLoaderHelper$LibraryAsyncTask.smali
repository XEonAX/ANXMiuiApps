.class Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;
.super Landroid/os/AsyncTask;
.source "MovieLibraryLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/MovieLibraryLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/assistant/library/Library;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllowedOverMetered:Z

.field final synthetic this$0:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;Z)V
    .locals 0
    .param p2, "allowedOverMetered"    # Z

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->this$0:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 79
    iput-boolean p2, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->mAllowedOverMetered:Z

    .line 80
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/assistant/library/Library;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 84
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v1

    const-wide/16 v2, 0x3f3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrarySync(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v0

    .line 85
    .local v0, "library":Lcom/miui/gallery/assistant/library/Library;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/assistant/library/Library;)V
    .locals 3
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v0, "MovieLibraryLoaderHelper"

    const-string v1, "getLibrarySync failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->this$0:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->access$000(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;ZI)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->this$0:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    iget-boolean v1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->mAllowedOverMetered:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->access$100(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/miui/gallery/assistant/library/Library;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$LibraryAsyncTask;->onPostExecute(Lcom/miui/gallery/assistant/library/Library;)V

    return-void
.end method
