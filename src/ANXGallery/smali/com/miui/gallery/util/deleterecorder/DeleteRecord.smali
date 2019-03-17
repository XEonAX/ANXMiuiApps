.class public Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
.super Lcom/miui/gallery/dao/base/Entity;
.source "DeleteRecord.java"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mReason:I

.field private mTag:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "reason"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 101
    iput-wide p1, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTimestamp:J

    .line 102
    iput p3, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mReason:I

    .line 103
    iput-object p4, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mFilePath:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTag:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 171
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 174
    check-cast v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    .line 175
    .local v0, "other":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    iget-wide v4, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTimestamp:J

    iget-wide v6, v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTimestamp:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 176
    goto :goto_0

    .line 177
    :cond_4
    iget v3, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mReason:I

    iget v4, v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mReason:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 178
    goto :goto_0

    .line 179
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mFilePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mFilePath:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 180
    goto :goto_0

    .line 181
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 182
    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string/jumbo v1, "timestamp"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "filePath"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "reason"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "tag"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-object v0
.end method

.method protected onConvertToContents(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 159
    const-string/jumbo v0, "timestamp"

    iget-wide v2, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v0, "filePath"

    iget-object v1, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "reason"

    iget v1, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string/jumbo v0, "tag"

    iget-object v1, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 151
    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTimestamp:J

    .line 152
    const-string v0, "filePath"

    invoke-static {p1, v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mFilePath:Ljava/lang/String;

    .line 153
    const-string v0, "reason"

    invoke-static {p1, v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mReason:I

    .line 154
    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTag:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 189
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "DeleteRecord [timestamp=%d, reason=%d, filePath=%s, tag=%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTimestamp:J

    .line 191
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mFilePath:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;->mTag:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 189
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
