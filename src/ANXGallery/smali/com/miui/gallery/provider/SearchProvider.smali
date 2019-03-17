.class public Lcom/miui/gallery/provider/SearchProvider;
.super Landroid/content/ContentProvider;
.source "SearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/SearchProvider$ContentResolver;
    }
.end annotation


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentResolver:Lcom/miui/gallery/provider/SearchProvider$ContentResolver;

.field private mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

.field private mSearchIconManager:Lcom/miui/gallery/provider/cache/SearchIconManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 31
    sget-object v0, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.search"

    const-string v2, "history"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.search"

    const-string v2, "icon"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    .line 39
    iput-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchIconManager:Lcom/miui/gallery/provider/cache/SearchIconManager;

    .line 166
    return-void
.end method

.method static synthetic access$100()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mContentResolver:Lcom/miui/gallery/provider/SearchProvider$ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/miui/gallery/provider/SearchProvider$ContentResolver;->notifyInternal(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 140
    return-void
.end method

.method private registerNotifyUri(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "matchResult"    # I

    .prologue
    .line 143
    packed-switch p2, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/provider/SearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchContract$History;->URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "count":I
    sget-object v2, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 108
    .local v1, "matchResult":I
    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    if-lez v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/SearchProvider;->notifyChange(Landroid/net/Uri;)V

    .line 118
    :cond_0
    return v0

    .line 110
    :pswitch_0
    iget-object v2, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    invoke-virtual {v2, p2, p3}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v4, -0x1

    .line 90
    const-wide/16 v0, -0x1

    .line 91
    .local v0, "id":J
    sget-object v3, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 92
    .local v2, "matchResult":I
    packed-switch v2, :pswitch_data_0

    .line 98
    :goto_0
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/SearchProvider;->notifyChange(Landroid/net/Uri;)V

    .line 101
    :cond_0
    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    return-object v3

    .line 94
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    invoke-virtual {v3, v4, v5, p2}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->insert(JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 101
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    .line 44
    new-instance v0, Lcom/miui/gallery/provider/cache/SearchIconManager;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/SearchIconManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchIconManager:Lcom/miui/gallery/provider/cache/SearchIconManager;

    .line 45
    new-instance v0, Lcom/miui/gallery/provider/SearchProvider$ContentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/provider/SearchProvider$ContentResolver;-><init>(Lcom/miui/gallery/provider/SearchProvider;Lcom/miui/gallery/provider/SearchProvider$1;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mContentResolver:Lcom/miui/gallery/provider/SearchProvider$ContentResolver;

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->releaseCache()V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchIconManager:Lcom/miui/gallery/provider/cache/SearchIconManager;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->releaseCache()V

    .line 156
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 160
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->releaseCache()V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchIconManager:Lcom/miui/gallery/provider/cache/SearchIconManager;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->releaseCache()V

    .line 164
    :cond_0
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 53
    .local v9, "matchResult":I
    const/4 v7, 0x0

    .line 54
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 55
    .local v6, "bundle":Landroid/os/Bundle;
    const/4 v10, -0x1

    .line 56
    .local v10, "queryLimit":I
    packed-switch v9, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-object v7

    .line 58
    :pswitch_0
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "bundle":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 59
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string v0, "query_limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "query_limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 61
    const-string v0, "query_limit"

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    :cond_1
    const-string v0, "query_text"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const-string v0, "query_text"

    const-string v1, "query_text"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v7

    .line 67
    if-eqz v7, :cond_0

    .line 68
    invoke-direct {p0, v7, v9}, Lcom/miui/gallery/provider/SearchProvider;->registerNotifyUri(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v0, "icon_uri"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "iconUri":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchIconManager:Lcom/miui/gallery/provider/cache/SearchIconManager;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/gallery/provider/cache/SearchIconManager;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "count":I
    sget-object v2, Lcom/miui/gallery/provider/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 125
    .local v1, "matchResult":I
    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_0
    if-lez v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/SearchProvider;->notifyChange(Landroid/net/Uri;)V

    .line 135
    :cond_0
    return v0

    .line 127
    :pswitch_0
    iget-object v2, p0, Lcom/miui/gallery/provider/SearchProvider;->mSearchHistoryManager:Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    invoke-virtual {v2, p3, p4, p2}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
