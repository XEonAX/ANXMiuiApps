.class Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;
.super Landroid/os/AsyncTask;
.source "MovieBackgroundDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTemplateId:I

.field final synthetic this$0:Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;I)V
    .locals 0
    .param p2, "templateId"    # I

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;->this$0:Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput p2, p0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;->mTemplateId:I

    .line 53
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 57
    iget v7, p0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;->mTemplateId:I

    invoke-static {v7}, Lcom/miui/gallery/movie/ui/factory/MovieFactory;->getTemplateNameById(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/movie/ui/factory/MovieFactory;->getParentTemplateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "templateName":Ljava/lang/String;
    const-string v7, "movieAssetsNormal"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/factory/TemplateFactory;->getTemplateDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    :cond_0
    const-string v7, "MovieBackgroundDownloadManager"

    const-string v8, "%s is already exist"

    invoke-static {v7, v8, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-object v12

    .line 61
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;->this$0:Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    invoke-static {v7}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->access$000(Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;)Ljava/util/List;

    move-result-object v6

    .line 62
    .local v6, "templateResources":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/TemplateResource;>;"
    if-nez v6, :cond_3

    .line 64
    :try_start_0
    new-instance v5, Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    invoke-direct {v5}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;-><init>()V

    .line 65
    .local v5, "templateResourceRequest":Lcom/miui/gallery/movie/net/TemplateResourceRequest;
    invoke-virtual {v5}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "objects":[Ljava/lang/Object;
    if-eqz v1, :cond_2

    array-length v7, v1

    if-lez v7, :cond_2

    const/4 v7, 0x0

    aget-object v7, v1, v7

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_2

    .line 67
    const/4 v7, 0x0

    aget-object v7, v1, v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 69
    :cond_2
    const-string v8, "MovieBackgroundDownloadManager"

    const-string v9, "getTemplateList %d "

    if-nez v6, :cond_5

    const/4 v7, -0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "objects":[Ljava/lang/Object;
    .end local v5    # "templateResourceRequest":Lcom/miui/gallery/movie/net/TemplateResourceRequest;
    :cond_3
    :goto_2
    if-nez v6, :cond_6

    .line 75
    const-string v7, "MovieBackgroundDownloadManager"

    const-string/jumbo v8, "template resource is null"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;->this$0:Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    invoke-static {v7, v6}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->access$002(Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 69
    .restart local v1    # "objects":[Ljava/lang/Object;
    .restart local v5    # "templateResourceRequest":Lcom/miui/gallery/movie/net/TemplateResourceRequest;
    :cond_5
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_1
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto :goto_1

    .line 70
    .end local v1    # "objects":[Ljava/lang/Object;
    .end local v5    # "templateResourceRequest":Lcom/miui/gallery/movie/net/TemplateResourceRequest;
    :catch_0
    move-exception v2

    .line 71
    .local v2, "requestError":Lcom/miui/gallery/net/base/RequestError;
    const-string v7, "MovieBackgroundDownloadManager"

    const-string v8, "RequestError: getTemplateList"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 77
    .end local v2    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/movie/entity/TemplateResource;

    .line 78
    .local v4, "templateResource":Lcom/miui/gallery/movie/entity/TemplateResource;
    iget-object v8, v4, Lcom/miui/gallery/movie/entity/TemplateResource;->nameKey:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 79
    const-string v8, "MovieBackgroundDownloadManager"

    const-string/jumbo v9, "start download %s in background"

    iget-object v10, v4, Lcom/miui/gallery/movie/entity/TemplateResource;->nameKey:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->getInstance()Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    move-result-object v8

    invoke-virtual {v8, v4, v12, v11}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;Z)V

    goto :goto_3
.end method
