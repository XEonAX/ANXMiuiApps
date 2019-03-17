.class final Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryProgressAsyncTask"
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
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1188
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->mContext:Landroid/content/Context;

    .line 1189
    iput-object p3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->mUri:Landroid/net/Uri;

    .line 1190
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1195
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-object v3

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "progress_percentage"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1200
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    if-nez v6, :cond_2

    .line 1202
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "PhotoPageImageItem"

    const-string v1, "Failed to obtain cursor for: %s"

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1208
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1209
    const-string v0, "progress_percentage"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1210
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1211
    const-string v0, "PhotoPageImageItem"

    const-string v1, "Failed to find item for: %s"

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1183
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressPercentage"    # Ljava/lang/Integer;

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    if-eqz p1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->access$3200(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1183
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
