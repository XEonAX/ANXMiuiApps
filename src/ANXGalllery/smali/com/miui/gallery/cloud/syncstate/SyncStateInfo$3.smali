.class Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;
.super Landroid/os/AsyncTask;
.source "SyncStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->updateSyncStatus(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/cloud/syncstate/SyncStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private isOuterConditionLimit(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 1
    .param p1, "status"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 221
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->DISCONNECTED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_WIFI:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->BATTERY_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYSTEM_SPACE_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CLOUD_SPACE_FULL:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needNotifyObservers(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 2
    .param p1, "newStatus"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$400(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .line 215
    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$400(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PAUSE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .line 216
    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$500(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .line 217
    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$600(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needTriggerSync(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newStatus"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    const/4 v0, 0x1

    .line 231
    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PENDING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNKNOWN_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne p2, v1, :cond_2

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$400(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->isOuterConditionLimit(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, "SyncStateInfo"

    const-string v2, "condition -> ok, trigger sync"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$700(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->isBackSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$800(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$702(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    const-string v1, "SyncStateInfo"

    const-string v2, "background -> foreground, trigger sync"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground([Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 3
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    .line 205
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 206
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v2, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$200(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v1

    .line 207
    .local v1, "newStatus":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->needTriggerSync(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v2, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$300(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Landroid/content/Context;)V

    .line 210
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->doInBackground([Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)V
    .locals 6
    .param p1, "newSyncStatus"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    const/4 v5, 0x0

    .line 249
    const-string v0, "SyncStateInfo"

    const-string/jumbo v1, "update status old: %s, new: %s, syncType: %s, mIsDirtyChanged: %s, mIsSyncedChanged: %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$400(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$700(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$500(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$600(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->needNotifyObservers(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$402(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v0, v5}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$502(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Z)Z

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v0, v5}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$602(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Z)Z

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->this$0:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->access$900(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 256
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;->onPostExecute(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)V

    return-void
.end method
