.class Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;
.super Ljava/lang/Object;
.source "MovieSavingFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->onEncodeEnd(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 159
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieStorage;->getOutputMediaFilePath()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "outFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    iget-object v2, v2, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$tempFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    iget-object v1, v1, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;

    iget-object v1, v1, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 163
    return-object v0
.end method
