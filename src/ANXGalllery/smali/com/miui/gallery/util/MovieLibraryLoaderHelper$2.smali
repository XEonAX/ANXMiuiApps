.class Lcom/miui/gallery/util/MovieLibraryLoaderHelper$2;
.super Ljava/lang/Object;
.source "MovieLibraryLoaderHelper.java"

# interfaces
.implements Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->startDownload(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$2;->this$0:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadResult(JI)V
    .locals 3
    .param p1, "libraryId"    # J
    .param p3, "resultCode"    # I

    .prologue
    .line 160
    const-string v0, "MovieLibraryLoaderHelper"

    const-string v1, "download result %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/util/MovieLibraryLoaderHelper$2;->this$0:Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0, p3}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->access$000(Lcom/miui/gallery/util/MovieLibraryLoaderHelper;ZI)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
