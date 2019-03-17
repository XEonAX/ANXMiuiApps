.class final Lcom/miui/gallery/scanner/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/MediaScanner;->cleanup(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$batchOperator:Lcom/miui/gallery/provider/ContentProviderBatchOperator;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deleter:Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;

.field final synthetic val$everCleanUnsupportedItems:Z

.field final synthetic val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;Landroid/content/Context;ZLcom/miui/gallery/provider/ContentProviderBatchOperator;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$deleter:Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;

    iput-object p3, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$everCleanUnsupportedItems:Z

    iput-object p5, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$batchOperator:Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 235
    const v6, 0x7fffffff

    .line 236
    .local v6, "id":I
    if-eqz p1, :cond_8

    .line 237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v5, "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v9

    .line 279
    .end local v5    # "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    :goto_1
    return-object v0

    .line 242
    .restart local v5    # "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    :cond_1
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 243
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 244
    .local v7, "localFlag":I
    const/4 v0, 0x7

    if-eq v7, v0, :cond_2

    const/16 v0, 0x8

    if-ne v7, v0, :cond_6

    .line 245
    :cond_2
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "localPath":Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$deleter:Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;

    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$context:Landroid/content/Context;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->deleteForResult(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v9

    .line 248
    goto :goto_1

    .line 250
    :cond_3
    const-string v0, "MediaScanner"

    const-string v1, "delete %s"

    invoke-static {v0, v1, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    new-instance v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v1, 0xb

    const-string v2, "MediaScanner"

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v0

    int-to-long v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->onImageDelete(J)V

    goto :goto_0

    .line 258
    :cond_4
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$everCleanUnsupportedItems:Z

    if-nez v0, :cond_0

    .line 259
    invoke-static {v8, v10}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$deleter:Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;

    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$context:Landroid/content/Context;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->deleteForResult(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v9

    .line 261
    goto :goto_1

    .line 263
    :cond_5
    const-string v0, "MediaScanner"

    const-string v1, "delete couldn\'t upload items %s"

    invoke-static {v0, v1, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    new-instance v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v1, 0xc

    const-string v2, "MediaScanner"

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v0

    int-to-long v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->onImageDelete(J)V

    goto/16 :goto_0

    .line 271
    .end local v8    # "localPath":Ljava/lang/String;
    :cond_6
    if-nez v7, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$context:Landroid/content/Context;

    int-to-long v2, v6

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaScanner$1;->val$batchOperator:Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/scanner/MediaScanner;->access$000(Landroid/content/Context;Landroid/database/Cursor;JLcom/miui/gallery/provider/ContentProviderBatchOperator;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 275
    .end local v7    # "localFlag":I
    :cond_7
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 276
    invoke-static {v5}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Ljava/util/Collection;)I

    .line 279
    .end local v5    # "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner$1;->handle(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
