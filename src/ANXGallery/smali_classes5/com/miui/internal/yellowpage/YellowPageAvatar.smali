.class public Lcom/miui/internal/yellowpage/YellowPageAvatar;
.super Lmiui/yellowpage/YellowPageImgLoader$Image;
.source "YellowPageAvatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPageAvatar"


# instance fields
.field private mAvatarName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "format"    # Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 34
    invoke-direct {p0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 37
    return-void
.end method

.method private static getAvatarUrlById(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 103
    sget-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne p2, v0, :cond_0

    const-string v0, "photo_url"

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "thumbnail_url"

    .line 105
    .local v0, "avatarColumn":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 111
    .local v2, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 113
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 117
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    .line 120
    :cond_2
    :goto_1
    return-object v2
.end method

.method private static getAvatarUrlByNumber(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 79
    sget-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne p2, v0, :cond_0

    const-string v0, "photo_url"

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, "thumbnail_url"

    .line 81
    .local v0, "avatarColumn":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 81
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 88
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 89
    .local v2, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 91
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 95
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    .line 98
    :cond_2
    :goto_1
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 48
    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 52
    move-object v1, p1

    check-cast v1, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    .line 53
    .local v1, "avatar":Lcom/miui/internal/yellowpage/YellowPageAvatar;
    iget-object v3, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    iget-object v4, v1, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 55
    .end local v1    # "avatar":Lcom/miui/internal/yellowpage/YellowPageAvatar;
    :cond_2
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    goto :goto_2

    .line 66
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-static {v0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;->getAvatarUrlById(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-static {v0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;->getAvatarUrlByNumber(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    .line 71
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/YellowPageImgLoader;->getDataSha1Digest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/miui/internal/yellowpage/YellowPageAvatar;->getName()Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    return-object v0
.end method
