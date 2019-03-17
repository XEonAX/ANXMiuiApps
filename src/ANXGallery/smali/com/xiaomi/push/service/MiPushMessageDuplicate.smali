.class public Lcom/xiaomi/push/service/MiPushMessageDuplicate;
.super Ljava/lang/Object;
.source "MiPushMessageDuplicate.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static mCachedMsgIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/MiPushMessageDuplicate;->lock:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/MiPushMessageDuplicate;->mCachedMsgIds:Ljava/util/Map;

    return-void
.end method

.method public static isDuplicateMessage(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 21
    sget-object v9, Lcom/xiaomi/push/service/MiPushMessageDuplicate;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 22
    :try_start_0
    const-string v8, "push_message_ids"

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v10}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 23
    .local v6, "sp":Landroid/content/SharedPreferences;
    sget-object v8, Lcom/xiaomi/push/service/MiPushMessageDuplicate;->mCachedMsgIds:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Queue;

    .line 24
    .local v5, "packageCachedMsgIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 25
    const-string v8, ""

    invoke-interface {v6, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "msgIds":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "ids":[Ljava/lang/String;
    new-instance v5, Ljava/util/LinkedList;

    .end local v5    # "packageCachedMsgIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 28
    .restart local v5    # "packageCachedMsgIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    array-length v10, v2

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v1, v2, v8

    .line 29
    .local v1, "id":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    sget-object v8, Lcom/xiaomi/push/service/MiPushMessageDuplicate;->mCachedMsgIds:Ljava/util/Map;

    invoke-interface {v8, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v2    # "ids":[Ljava/lang/String;
    .end local v3    # "msgIds":Ljava/lang/String;
    :cond_1
    invoke-interface {v5, p2}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 34
    const/4 v7, 0x1

    monitor-exit v9

    .line 44
    :goto_1
    return v7

    .line 36
    :cond_2
    invoke-interface {v5, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v8

    const/16 v10, 0x19

    if-le v8, v10, :cond_3

    .line 38
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 40
    :cond_3
    const-string v8, ","

    invoke-static {v5, v8}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "newMsgIds":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    monitor-exit v9

    goto :goto_1

    .line 45
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "newMsgIds":Ljava/lang/String;
    .end local v5    # "packageCachedMsgIds":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
