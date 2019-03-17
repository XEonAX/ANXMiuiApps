.class Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;
.super Ljava/lang/Object;
.source "CheckDownloadOriginHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->queryMediaItemByIds()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;->this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    :cond_0
    if-nez v1, :cond_1

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    :cond_1
    new-instance v0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;)V

    .line 236
    .local v0, "item":Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mId:J

    .line 237
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mSize:J

    .line 238
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mPath:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    .end local v0    # "item":Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;
    :cond_2
    return-object v1
.end method
