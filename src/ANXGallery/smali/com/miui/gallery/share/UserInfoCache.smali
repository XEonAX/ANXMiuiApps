.class public Lcom/miui/gallery/share/UserInfoCache;
.super Lcom/miui/gallery/share/DBCache;
.source "UserInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/share/DBCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/gallery/share/UserInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/gallery/share/UserInfoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/miui/gallery/share/UserInfoCache;

    invoke-direct {v0}, Lcom/miui/gallery/share/UserInfoCache;-><init>()V

    sput-object v0, Lcom/miui/gallery/share/UserInfoCache;->sInstance:Lcom/miui/gallery/share/UserInfoCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/share/DBCache;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/share/UserInfoCache;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miui/gallery/share/UserInfoCache;->sInstance:Lcom/miui/gallery/share/UserInfoCache;

    return-object v0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected bridge synthetic newKey(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/UserInfoCache;->newKey(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newKey(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newValue(Landroid/database/Cursor;)Lcom/miui/gallery/share/UserInfo;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 38
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "userId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/miui/gallery/share/UserInfo;

    invoke-direct {v0, v1}, Lcom/miui/gallery/share/UserInfo;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "user":Lcom/miui/gallery/share/UserInfo;
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/share/UserInfo;->setAliasNick(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/share/UserInfo;->setMiliaoNick(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/share/UserInfo;->setMiliaoIconUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic newValue(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/UserInfoCache;->newValue(Landroid/database/Cursor;)Lcom/miui/gallery/share/UserInfo;

    move-result-object v0

    return-object v0
.end method
