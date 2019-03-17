.class public Lcom/miui/utils/SafeContentResolver;
.super Ljava/lang/Object;
.source "SafeContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/utils/SafeContentResolver$Callback;
    }
.end annotation


# direct methods
.method public static insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 17
    :goto_0
    return-object v1

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SafeContentResolver"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/utils/SafeContentResolver$Callback;)Ljava/lang/Object;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/utils/SafeContentResolver$Callback",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p6, "callback":Lcom/miui/utils/SafeContentResolver$Callback;, "Lcom/miui/utils/SafeContentResolver$Callback<TT;>;"
    const/4 v6, 0x0

    .line 43
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 44
    invoke-interface {p6, v6}, Lcom/miui/utils/SafeContentResolver$Callback;->call(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 48
    if-eqz v6, :cond_0

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v7

    .line 46
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SafeContentResolver"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-eqz v6, :cond_1

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p6, v0}, Lcom/miui/utils/SafeContentResolver$Callback;->call(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 48
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 35
    :goto_0
    return v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SafeContentResolver"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    const/4 v1, -0x1

    goto :goto_0
.end method
