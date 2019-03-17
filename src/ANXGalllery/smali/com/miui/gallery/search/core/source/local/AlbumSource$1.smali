.class Lcom/miui/gallery/search/core/source/local/AlbumSource$1;
.super Ljava/lang/Object;
.source "AlbumSource.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/source/local/AlbumSource;->loadContent()Ljava/util/List;
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/source/local/AlbumSource;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/source/local/AlbumSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/source/local/AlbumSource;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource$1;->this$0:Lcom/miui/gallery/search/core/source/local/AlbumSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/local/AlbumSource$1;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    iget-object v4, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource$1;->this$0:Lcom/miui/gallery/search/core/source/local/AlbumSource;

    invoke-static {v4}, Lcom/miui/gallery/search/core/source/local/AlbumSource;->access$000(Lcom/miui/gallery/search/core/source/local/AlbumSource;)Landroid/util/LongSparseArray;

    move-result-object v2

    .line 53
    .local v2, "shareAlbumInfo":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v1, "albums":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;>;"
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource$1;->this$0:Lcom/miui/gallery/search/core/source/local/AlbumSource;

    invoke-static {v4}, Lcom/miui/gallery/search/core/source/local/AlbumSource;->access$100(Lcom/miui/gallery/search/core/source/local/AlbumSource;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 56
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    .line 57
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 55
    invoke-static {v4, v6, v7, v5, v8}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "albumName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/miui/gallery/search/core/source/local/AlbumSource$1;->this$0:Lcom/miui/gallery/search/core/source/local/AlbumSource;

    invoke-static {v4, v0, p1, v2}, Lcom/miui/gallery/search/core/source/local/AlbumSource;->access$200(Lcom/miui/gallery/search/core/source/local/AlbumSource;Ljava/lang/String;Landroid/database/Cursor;Landroid/util/LongSparseArray;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v3

    .line 60
    .local v3, "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    if-eqz v3, :cond_1

    .line 61
    new-instance v4, Landroid/util/Pair;

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v3    # "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    .end local v0    # "albumName":Ljava/lang/String;
    .end local v1    # "albums":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;>;>;"
    .end local v2    # "shareAlbumInfo":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
