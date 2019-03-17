.class public Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
.super Lcom/miui/gallery/dao/base/Entity;
.source "PendingTaskInfo.java"


# instance fields
.field private mCreateTime:J

.field private mData:[B

.field private mExpireTime:J

.field private mMinLatency:J

.field private mNetType:I

.field private mRequireCharging:Z

.field private mRequireDeviceIdle:Z

.field private mRetryTime:I

.field private mTaskTag:Ljava/lang/String;

.field private mTaskType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mNetType:I

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mCreateTime:J

    return-wide v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mData:[B

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mExpireTime:J

    return-wide v0
.end method

.method public getMinLatencyMillis()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mMinLatency:J

    return-wide v0
.end method

.method public getNetType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mNetType:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRetryTime:I

    return v0
.end method

.method protected final getTableColumns()Ljava/util/List;
    .locals 4
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
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string/jumbo v1, "taskType"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v1, "taskTag"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "netType"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "charging"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "deviceIdle"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "data"

    const-string v2, "BLOB"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "createTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "expireTime"

    const-string v2, "INTEGER"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "retryTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mTaskType:I

    return v0
.end method

.method public increaseRetryTime()V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRetryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRetryTime:I

    .line 123
    return-void
.end method

.method public isRequireCharging()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireCharging:Z

    return v0
.end method

.method public isRequireDeviceIdle()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireDeviceIdle:Z

    return v0
.end method

.method protected final onConvertToContents(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    const-string/jumbo v0, "taskType"

    iget v3, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mTaskType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string/jumbo v0, "taskTag"

    iget-object v3, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mTaskTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "netType"

    iget v3, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mNetType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v3, "charging"

    iget-boolean v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireCharging:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v0, "deviceIdle"

    iget-boolean v3, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireDeviceIdle:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v0, "data"

    iget-object v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mData:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 161
    const-string v0, "createTime"

    iget-wide v2, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mCreateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v0, "expireTime"

    iget-wide v2, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mExpireTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string v0, "retryTime"

    iget v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRetryTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    return-void

    :cond_0
    move v0, v2

    .line 158
    goto :goto_0

    :cond_1
    move v1, v2

    .line 159
    goto :goto_1
.end method

.method protected final onInitFromCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    const-string/jumbo v0, "taskType"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mTaskType:I

    .line 143
    const-string/jumbo v0, "taskTag"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mTaskTag:Ljava/lang/String;

    .line 144
    const-string v0, "netType"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mNetType:I

    .line 145
    const-string v0, "charging"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireCharging:Z

    .line 146
    const-string v0, "deviceIdle"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireDeviceIdle:Z

    .line 147
    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getBlob(Landroid/database/Cursor;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mData:[B

    .line 148
    const-string v0, "createTime"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mCreateTime:J

    .line 149
    const-string v0, "expireTime"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mExpireTime:J

    .line 150
    const-string v0, "retryTime"

    invoke-static {p1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRetryTime:I

    .line 151
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 146
    goto :goto_1
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mCreateTime:J

    .line 99
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mData:[B

    .line 91
    return-void
.end method

.method public setExpireTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mExpireTime:J

    .line 115
    return-void
.end method

.method public setMinLatencyMillis(J)V
    .locals 1
    .param p1, "minLatency"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mMinLatency:J

    .line 107
    return-void
.end method

.method public setNetType(I)V
    .locals 0
    .param p1, "netType"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mNetType:I

    .line 67
    return-void
.end method

.method public setRequireCharging(Z)V
    .locals 0
    .param p1, "requireCharging"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireCharging:Z

    .line 71
    return-void
.end method

.method public setRequireDeviceIdle(Z)V
    .locals 0
    .param p1, "requireDeviceIdle"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mRequireDeviceIdle:Z

    .line 83
    return-void
.end method

.method public setTaskTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskTag"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mTaskTag:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTaskType(I)V
    .locals 0
    .param p1, "taskType"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->mTaskType:I

    .line 51
    return-void
.end method
