.class Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;
.super Landroid/os/AsyncTask;
.source "CheckDownloadOriginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/CheckDownloadOriginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckOriginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "localFile"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->PROJECTION:[Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method private isLocalAlbum()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 192
    const-string v3, "_id = ? AND attributes&1 =0 "

    .line 196
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .line 198
    invoke-static {v5}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$400(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$1;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;)V

    .line 196
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 206
    .local v7, "count":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method private queryMediaItemByIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v2}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$500(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)[J

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->arrayToList([J)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "localFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;)V

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->isLocalAlbum()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    const-string v3, "CheckDownloadOriginHelper"

    const-string v4, "album is not local"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-object v0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->queryMediaItemByIds()Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;

    .line 163
    .local v1, "item":Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;
    iget-object v4, v1, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 166
    if-nez v0, :cond_3

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .restart local v0    # "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;->onStartDownload()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$000(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Ljava/util/List;Z)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    const-string v0, "CheckDownloadOriginHelper"

    const-string v1, "no item to download"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;->onComplete()V

    goto :goto_0
.end method
