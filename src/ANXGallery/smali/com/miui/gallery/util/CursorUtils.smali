.class public Lcom/miui/gallery/util/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method public static addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "fromCursor"    # Landroid/database/Cursor;
    .param p1, "toCursor"    # Landroid/database/MatrixCursor;
    .param p2, "columns"    # [Ljava/lang/Object;

    .prologue
    .line 9
    array-length v0, p2

    .line 10
    .local v0, "columnsLen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 10
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :pswitch_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_1

    .line 16
    :pswitch_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_1

    .line 19
    :pswitch_2
    const/4 v2, 0x0

    aput-object v2, p2, v1

    goto :goto_1

    .line 22
    :pswitch_3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_1

    .line 25
    :pswitch_4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 30
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
