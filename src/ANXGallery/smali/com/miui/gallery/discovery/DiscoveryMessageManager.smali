.class public Lcom/miui/gallery/discovery/DiscoveryMessageManager;
.super Ljava/lang/Object;
.source "DiscoveryMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;,
        Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;,
        Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;,
        Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;,
        Lcom/miui/gallery/discovery/DiscoveryMessageManager$Holder;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field private static sContentObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sFactory:Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;

.field private static sMessageOperators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/discovery/BaseMessageOperator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sSyncLock:Ljava/lang/Object;

    .line 41
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "actionUri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "messageSource"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "subTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "expireTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "receiveTime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "updateTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "triggerTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "isConsumed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "extraData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sMessageOperators:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sContentObserverList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;)V

    sput-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sFactory:Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;

    .line 78
    const/4 v0, 0x1

    new-instance v1, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;

    invoke-direct {v1}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->registerMessageOperator(ILcom/miui/gallery/discovery/BaseMessageOperator;)V

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;-><init>()V

    return-void
.end method

.method private createComparatorByType(I)Ljava/util/Comparator;
    .locals 1
    .param p1, "msgTypeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$2;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;)V

    return-object v0
.end method

.method private createFilterByType(I)Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;
    .locals 1
    .param p1, "msgTypeMask"    # I

    .prologue
    .line 185
    new-instance v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$3;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;)V

    return-object v0
.end method

.method private findMessageOperatorByType(I)Lcom/miui/gallery/discovery/BaseMessageOperator;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 97
    sget-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sMessageOperators:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sMessageOperators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/discovery/BaseMessageOperator;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$Holder;->INSTANCE:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    return-object v0
.end method

.method private notifyChangeByMessageType(I)V
    .locals 5
    .param p1, "msgType"    # I

    .prologue
    .line 143
    sget-object v2, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    sget-object v1, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sContentObserverList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    .line 145
    .local v0, "observer":Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;
    invoke-virtual {v0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;->getMessageTypeMask()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 146
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;

    invoke-direct {v4, p0, v0}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    .end local v0    # "observer":Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    return-void
.end method

.method private registerMessageOperator(ILcom/miui/gallery/discovery/BaseMessageOperator;)V
    .locals 1
    .param p1, "msgType"    # I
    .param p2, "operator"    # Lcom/miui/gallery/discovery/BaseMessageOperator;

    .prologue
    .line 93
    sget-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sMessageOperators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private wrapMessage(Lcom/miui/gallery/model/DiscoveryMessage;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;
    .param p2, "extraDataJson"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/miui/gallery/model/DiscoveryMessage;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->findMessageOperatorByType(I)Lcom/miui/gallery/discovery/BaseMessageOperator;

    move-result-object v0

    .line 361
    .local v0, "messageOperator":Lcom/miui/gallery/discovery/BaseMessageOperator;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/discovery/BaseMessageOperator;->wrapMessage(Lcom/miui/gallery/model/DiscoveryMessage;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public createLoader(Landroid/content/Context;I)Lcom/miui/gallery/loader/DiscoveryMessageLoader;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayScene"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sFactory:Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;->createLoader(Landroid/content/Context;I)Lcom/miui/gallery/loader/DiscoveryMessageLoader;

    move-result-object v0

    return-object v0
.end method

.method public loadMessage(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageTypeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 201
    const/4 v9, 0x0

    .line 242
    :cond_0
    :goto_0
    return-object v9

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") != 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$DiscoveryMessage;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 205
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 206
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v9, "discoveryMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    if-eqz v8, :cond_0

    .line 209
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->createComparatorByType(I)Ljava/util/Comparator;

    move-result-object v7

    .line 210
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    invoke-direct {p0, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->createFilterByType(I)Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;

    move-result-object v11

    .line 211
    .local v11, "filter":Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    new-instance v6, Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    invoke-direct {v6}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;-><init>()V

    .line 213
    .local v6, "builder":Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    const/16 v0, 0xc

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v6, v0}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->consumed(Z)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 214
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->type(I)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 215
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->actionUri(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 216
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->message(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/16 v1, 0x8

    .line 217
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->expireTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/16 v1, 0xb

    .line 218
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->triggerTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 219
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->updateTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 220
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->title(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 221
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->subTitle(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 222
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->priority(I)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/16 v1, 0x9

    .line 223
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->receiveTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 224
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageSource(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageId(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .line 226
    invoke-virtual {v6}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->build()Lcom/miui/gallery/model/DiscoveryMessage;

    move-result-object v12

    .line 227
    .local v12, "message":Lcom/miui/gallery/model/DiscoveryMessage;
    const/16 v0, 0xd

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v12, v0}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->wrapMessage(Lcom/miui/gallery/model/DiscoveryMessage;Ljava/lang/String;)V

    .line 228
    if-eqz v11, :cond_2

    invoke-interface {v11, v12}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;->accept(Lcom/miui/gallery/model/DiscoveryMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 235
    .end local v6    # "builder":Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    .end local v11    # "filter":Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;
    .end local v12    # "message":Lcom/miui/gallery/model/DiscoveryMessage;
    :catch_0
    move-exception v10

    .line 236
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "DiscoveryMessageManager"

    const-string v1, "encounter error when load messages:\n%s"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 213
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v6    # "builder":Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .restart local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    .restart local v11    # "filter":Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 232
    .end local v6    # "builder":Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    :cond_4
    if-eqz v7, :cond_5

    .line 233
    :try_start_2
    invoke-static {v9, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    .end local v11    # "filter":Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public markAsRead(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->findMessageOperatorByType(I)Lcom/miui/gallery/discovery/BaseMessageOperator;

    move-result-object v0

    .line 307
    .local v0, "messageOperator":Lcom/miui/gallery/discovery/BaseMessageOperator;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/discovery/BaseMessageOperator;->markMessageAsRead(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->notifyChangeByMessageType(I)V

    goto :goto_0
.end method

.method public markAsReadAsync(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 319
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/gallery/model/DiscoveryMessage;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Landroid/content/Context;[Lcom/miui/gallery/model/DiscoveryMessage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public markAsReadByTypeAsync(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgType"    # I

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public registerContentObserver(Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The observer is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    sget-object v1, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sContentObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sContentObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    monitor-exit v1

    .line 121
    return-void

    .line 118
    :cond_1
    const-string v0, "DiscoveryMessageManager"

    const-string v2, "Observer [%s] is already registered."

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveMessage(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "ITT;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p3, "saveParams":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->findMessageOperatorByType(I)Lcom/miui/gallery/discovery/BaseMessageOperator;

    move-result-object v1

    .line 260
    .local v1, "messageOperator":Lcom/miui/gallery/discovery/BaseMessageOperator;
    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    invoke-virtual {v1, p1, p3}, Lcom/miui/gallery/discovery/BaseMessageOperator;->saveMessage(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-direct {p0, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->notifyChangeByMessageType(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "DiscoveryMessageManager"

    const-string v3, "Generic type saveParams doesn\'t match the generic type defined in concrete implementation of BaseMessageOperator"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterContentObserver(Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;)V
    .locals 5
    .param p1, "observer"    # Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The observer is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    sget-object v2, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    sget-object v1, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sContentObserverList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 129
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 130
    const-string v1, "DiscoveryMessageManager"

    const-string v3, "Observer [%s] is already unregistered."

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :goto_0
    monitor-exit v2

    .line 135
    return-void

    .line 132
    :cond_1
    sget-object v1, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->sContentObserverList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 134
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
