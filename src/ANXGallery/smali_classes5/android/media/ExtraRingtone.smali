.class public Landroid/media/ExtraRingtone;
.super Ljava/lang/Object;
.source "ExtraRingtone.java"


# static fields
.field private static final MEDIA_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "title"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "formatSystemRingtone"    # Z

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1, p2}, Landroid/media/ExtraRingtone;->getRingtoneTitleMIUI(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p0, p1}, Landroid/media/ExtraRingtone;->getRingtoneTitleAndroid(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0
.end method

.method private static getRingtoneTitleAndroid(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 133
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 134
    .local v0, "r":Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "title":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ringtone_unknown"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, "resId":I
    if-lez v2, :cond_1

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 141
    :cond_1
    const-string v1, ""

    .line 144
    .end local v2    # "resId":I
    :cond_2
    :goto_1
    return-object v1
.end method

.method private static getRingtoneTitleMIUI(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "formatSystemRingtone"    # Z

    .line 40
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sget v2, Lcom/miui/system/internal/R$string;->android_ringtone_default_with_actual:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    return-object v1
.end method

.method public static getSystemLocalizationFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lmiui/os/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    .line 120
    .local v2, "res":I
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "miui.system"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v3

    .line 124
    :goto_0
    if-lez v2, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    return-object v1

    .line 129
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "res":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 53
    .local v7, "res":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 55
    .local v8, "title":Ljava/lang/String;
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_7

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "authority":Ljava/lang/String;
    const-string v1, "settings"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    if-eqz p2, :cond_7

    .line 60
    nop

    .line 61
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v1

    .line 60
    invoke-static {p0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v1, v10}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 65
    .end local v1    # "actualUri":Landroid/net/Uri;
    :cond_0
    const/4 v12, 0x0

    .line 68
    .local v12, "fromDataBase":Z
    const-string v1, "media"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    sget-object v3, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 70
    const/4 v12, 0x1

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 77
    if-nez v8, :cond_5

    .line 78
    const-string v1, ""

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 80
    :cond_2
    if-eqz v12, :cond_3

    .line 81
    const-string v1, ""

    .line 96
    :goto_0
    move-object v8, v1

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/ExtraRingtone;->getSystemLocalizationFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 84
    if-nez v8, :cond_5

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 89
    if-eqz v8, :cond_4

    const-string v1, "_&_"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v9

    .line 90
    .local v1, "sepIndex":I
    :goto_1
    if-lez v1, :cond_5

    .line 91
    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .end local v8    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v1    # "title":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 96
    :goto_3
    if-eqz v0, :cond_6

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 103
    .end local v11    # "authority":Ljava/lang/String;
    .end local v12    # "fromDataBase":Z
    :cond_7
    :goto_4
    if-nez v8, :cond_8

    .line 104
    sget v1, Lmiui/system/R$string;->android_ringtone_silent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v8    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    :goto_5
    goto :goto_7

    .line 105
    .end local v1    # "title":Ljava/lang/String;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 106
    sget v1, Lmiui/system/R$string;->android_ringtone_unknown:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 108
    :cond_9
    const-string v1, "."

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "index":I
    if-ne v1, v9, :cond_a

    move-object v2, v8

    goto :goto_6

    :cond_a
    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object v1, v2

    .line 111
    .end local v8    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_7
    return-object v1
.end method
