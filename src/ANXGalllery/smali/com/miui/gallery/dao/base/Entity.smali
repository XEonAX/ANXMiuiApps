.class public abstract Lcom/miui/gallery/dao/base/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field protected mId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/dao/base/Entity;->mId:J

    return-void
.end method

.method public static addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/dao/base/TableColumn;>;"
    new-instance v0, Lcom/miui/gallery/dao/base/TableColumn;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/dao/base/TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public static addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columnType"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/dao/base/TableColumn;>;"
    new-instance v0, Lcom/miui/gallery/dao/base/TableColumn;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/dao/base/TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public static addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columnType"    # Ljava/lang/String;
    .param p3, "isUnique"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/dao/base/TableColumn;>;"
    new-instance v0, Lcom/miui/gallery/dao/base/TableColumn;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/dao/base/TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public static getBlob(Landroid/database/Cursor;Ljava/lang/String;)[B
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    return-object v1
.end method

.method public static getDoubleDefault(Landroid/database/Cursor;Ljava/lang/String;D)D
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defValue"    # D

    .prologue
    .line 128
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p2

    .end local p2    # "defValue":D
    :cond_0
    return-wide p2
.end method

.method public static getFloatDefault(Landroid/database/Cursor;Ljava/lang/String;F)F
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 117
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result p2

    .end local p2    # "defValue":F
    :cond_0
    return p2
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static getIntDefault(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 96
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getLongDefault(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 76
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_0
    return-wide p2
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringDefault(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method


# virtual methods
.method protected convertToContents()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/base/Entity;->onConvertToContents(Landroid/content/ContentValues;)V

    .line 65
    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/miui/gallery/dao/base/Entity;->mId:J

    return-wide v0
.end method

.method protected abstract getTableColumns()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueConstraints()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected initFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 55
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/dao/base/Entity;->mId:J

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/gallery/dao/base/Entity;->onInitFromCursor(Landroid/database/Cursor;)V

    .line 57
    return-void
.end method

.method protected abstract onConvertToContents(Landroid/content/ContentValues;)V
.end method

.method protected abstract onInitFromCursor(Landroid/database/Cursor;)V
.end method

.method public final setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/miui/gallery/dao/base/Entity;->mId:J

    .line 36
    return-void
.end method
