.class Lcom/miui/gallery/provider/cache/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method public static getBlob(Landroid/database/Cursor;I)[B
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # I

    .prologue
    .line 78
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getChar(Landroid/database/Cursor;I)Ljava/lang/Character;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInt(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # I

    .prologue
    .line 49
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLong(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # I

    .prologue
    .line 41
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # I

    .prologue
    .line 33
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static putBlob(Landroid/database/CursorWindow;[BII)Z
    .locals 1
    .param p0, "window"    # Landroid/database/CursorWindow;
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0, p2, p3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v0

    goto :goto_0
.end method

.method public static putLong(Landroid/database/CursorWindow;Ljava/lang/Number;II)Z
    .locals 2
    .param p0, "window"    # Landroid/database/CursorWindow;
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0, p2, p3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    .line 20
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    goto :goto_0
.end method

.method public static putString(Landroid/database/CursorWindow;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "window"    # Landroid/database/CursorWindow;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 9
    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0, p2, p3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    .line 12
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method
