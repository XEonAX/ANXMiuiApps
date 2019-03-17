.class Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;
.super Landroid/os/AsyncTask;
.source "AssetLocalInstallDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->installPackageAsync(I)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

.field final synthetic val$task:Lcom/nexstreaming/app/common/task/Task;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Lcom/nexstreaming/app/common/task/Task;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->val$task:Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Exception;
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 398
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 399
    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 405
    if-nez v2, :cond_6

    .line 407
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 408
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$000()Ljava/lang/String;

    move-result-object v1

    .line 409
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 412
    array-length v3, v2

    move v0, v7

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v5, v2, v0

    .line 413
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 415
    const-string v8, ".zip"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 416
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 419
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 420
    iget-object v9, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    invoke-static {v9, v1, v8}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$100(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 421
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 431
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 432
    const-string v0, "AssetLocalInstallDB"

    const-string v1, "download asset package not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "download asset package not found"

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 513
    :goto_2
    return-object v0

    .line 436
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 437
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v1, v7

    .line 439
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 440
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 439
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move-object v8, v2

    move-object v9, v3

    :goto_4
    move v10, v7

    .line 462
    :goto_5
    array-length v0, v9

    if-ge v10, v0, :cond_9

    .line 464
    aget-object v0, v9, v10

    .line 465
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 467
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 468
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b(I)Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_5

    .line 470
    const-string v3, "AssetLocalInstallDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "already installed Asset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getInstallSourceType()Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    move-result-object v1

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->STORE:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_8

    .line 474
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$200(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    invoke-static {v0, v2}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$300(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 490
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->val$task:Lcom/nexstreaming/app/common/task/Task;

    add-int/lit8 v1, v10, 0x1

    array-length v4, v9

    invoke-virtual {v0, v1, v4}, Lcom/nexstreaming/app/common/task/Task;->setProgress(II)V

    .line 496
    :try_start_2
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    aget-object v1, v9, v10

    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->val$task:Lcom/nexstreaming/app/common/task/Task;

    const/4 v5, 0x0

    aget-object v6, v8, v10

    invoke-static/range {v0 .. v6}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$400(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;ZLjava/lang/String;)V

    .line 498
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install asset completed : asset = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_5

    .line 443
    :cond_6
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$100(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 444
    new-array v1, v5, [Ljava/lang/String;

    .line 445
    new-array v0, v5, [Ljava/lang/String;

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    move-object v8, v0

    move-object v9, v1

    goto/16 :goto_4

    .line 448
    :cond_7
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download asset package not found. AssetIdx="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "download asset package not found"

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 479
    :cond_8
    :try_start_3
    const-string v1, "AssetLocalInstallDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installed Asset is not store type. idx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 482
    :catch_0
    move-exception v0

    .line 484
    const-string v0, "AssetLocalInstallDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseId is not Integer baseId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 499
    :catch_1
    move-exception v0

    .line 501
    :try_start_4
    const-string v1, "AssetLocalInstallDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install asset failed : asset = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 509
    :catchall_0
    move-exception v0

    throw v0

    .line 503
    :catch_2
    move-exception v0

    .line 505
    :try_start_5
    const-string v1, "AssetLocalInstallDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install asset failed : asset = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$000()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v9, v10

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 513
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 475
    :catch_3
    move-exception v0

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 389
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->this$0:Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;

    invoke-static {v0, v3}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->access$502(Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;Z)Z

    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->val$task:Lcom/nexstreaming/app/common/task/Task;

    new-instance v1, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$InstallTaskError;

    const-string v2, "asset_install_failed"

    invoke-direct {v1, v2, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$InstallTaskError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->val$task:Lcom/nexstreaming/app/common/task/Task;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 389
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB$1;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 394
    return-void
.end method
