.class Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;
.super Landroid/os/AsyncTask;
.source "PickGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mPickSha1Results:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/helper/Picker;)V
    .locals 1
    .param p2, "picker"    # Lcom/miui/gallery/picker/helper/Picker;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 244
    const-string v0, "\',\'"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->mPickSha1Results:Ljava/lang/String;

    .line 245
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_PICKER:Landroid/net/Uri;

    const-string/jumbo v2, "sha1"

    .line 250
    invoke-static {v1, v2, v4}, Lcom/miui/gallery/util/UriUtil;->appendGroupBy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/PickerActivity;->PICKABLE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sha1 IN (\'%s\') AND (localGroupId!=-1000) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->mPickSha1Results:Ljava/lang/String;

    aput-object v7, v5, v9

    .line 252
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "INSTR(\"\'%s\'\", sha1)"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->mPickSha1Results:Ljava/lang/String;

    aput-object v8, v7, v9

    .line 254
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 259
    :cond_0
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 264
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$302(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;)Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "return a null cursor"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 271
    :cond_0
    :try_start_0
    const-string v7, "PickGalleryActivity"

    const-string v8, "Picker capacity: %d, result %d items"

    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v9}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ID:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v7, v8, :cond_3

    .line 273
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$400(Lcom/miui/gallery/picker/PickGalleryActivity;)Landroid/content/Intent;

    move-result-object v4

    .line 274
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 276
    .local v0, "bestImageCount":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 277
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 278
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v3, v8}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "id":J
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-static {v7, v8, v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$500(Lcom/miui/gallery/picker/PickGalleryActivity;II)V

    .line 284
    const-string v7, "pick-result-data"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 285
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7, v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$600(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v0    # "bestImageCount":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 318
    :goto_2
    return-void

    .line 287
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$700(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/database/Cursor;)V

    .line 288
    const-string v7, "PickGalleryActivity"

    const-string v8, "picked file: %d, pending: %d"

    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v9}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$800(Lcom/miui/gallery/picker/PickGalleryActivity;)[Landroid/net/Uri;

    move-result-object v9

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v10}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 291
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1000(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "PickGalleryActivity"

    const-string v8, "Parse failed %s"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 293
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0035

    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v9}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v12}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7, v6}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 295
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1000(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 316
    .end local v6    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v7

    .line 296
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 297
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1100(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V

    goto/16 :goto_1

    .line 300
    :cond_6
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 301
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$800(Lcom/miui/gallery/picker/PickGalleryActivity;)[Landroid/net/Uri;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_7

    .line 302
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e002e

    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v9}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    .line 306
    .restart local v6    # "text":Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7, v6}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 307
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    goto/16 :goto_1

    .line 304
    .end local v6    # "text":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c03c5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v11}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "text":Ljava/lang/String;
    goto :goto_3

    .line 309
    .end local v6    # "text":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1100(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
