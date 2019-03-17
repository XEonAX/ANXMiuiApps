.class public abstract Lcom/miui/extraphoto/sdk/BaseEchoListener;
.super Lcom/miui/extraphoto/sdk/IEchoListener$Stub;
.source "BaseEchoListener.java"


# static fields
.field private static final UPDATE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/extraphoto/sdk/BaseEchoListener;->UPDATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/extraphoto/sdk/IEchoListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/extraphoto/sdk/BaseEchoListener;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/BaseEchoListener;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/sdk/BaseEchoListener;->isDeleted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/extraphoto/sdk/BaseEchoListener;Landroid/database/Cursor;ILandroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/BaseEchoListener;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/ContentValues;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/sdk/BaseEchoListener;->putValue(Landroid/database/Cursor;ILandroid/content/ContentValues;)V

    return-void
.end method

.method private isDeleted(I)Z
    .locals 1
    .param p1, "localFlag"    # I

    .prologue
    .line 75
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putValue(Landroid/database/Cursor;ILandroid/content/ContentValues;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 176
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 177
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 179
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private updateDataBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v6, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;

    invoke-direct {v6, p0, p1}, Lcom/miui/extraphoto/sdk/BaseEchoListener$3;-><init>(Lcom/miui/extraphoto/sdk/BaseEchoListener;Ljava/lang/String;)V

    .line 171
    .local v6, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/extraphoto/sdk/BaseEchoListener;->UPDATE_PROJECTION:[Ljava/lang/String;

    const-string v3, "localFile like ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onEchoEnd(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "originPath"    # Ljava/lang/String;
    .param p2, "echoPath"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, "path":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    .local v2, "moveFileStart":J
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    const-string v5, "BaseEchoListener"

    const-string v8, "move file cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 46
    .local v6, "updateDataBaseStart":J
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/sdk/BaseEchoListener;->updateDataBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v5, "BaseEchoListener"

    const-string/jumbo v8, "update dataBase cost: %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 49
    const-string v5, "BaseEchoListener"

    const-string/jumbo v8, "update db success %s, %s"

    invoke-static {v5, v8, v4, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .end local v2    # "moveFileStart":J
    .end local v6    # "updateDataBaseStart":J
    :goto_0
    move-object v0, v4

    .line 61
    .local v0, "finalPath":Ljava/lang/String;
    move v1, p3

    .line 62
    .local v1, "finalSuccess":Z
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v5

    new-instance v8, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;

    invoke-direct {v8, p0, v0, v1}, Lcom/miui/extraphoto/sdk/BaseEchoListener$2;-><init>(Lcom/miui/extraphoto/sdk/BaseEchoListener;Ljava/lang/String;Z)V

    invoke-virtual {v5, v8}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void

    .line 51
    .end local v0    # "finalPath":Ljava/lang/String;
    .end local v1    # "finalSuccess":Z
    .restart local v2    # "moveFileStart":J
    .restart local v6    # "updateDataBaseStart":J
    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    .line 54
    .end local v6    # "updateDataBaseStart":J
    :cond_1
    const/4 p3, 0x0

    .line 55
    const-string v5, "BaseEchoListener"

    const-string v8, "remove file fail %s, %s"

    invoke-static {v5, v8, p2, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    .end local v2    # "moveFileStart":J
    :cond_2
    const-string v5, "BaseEchoListener"

    const-string v8, "echo file fail %s, %s"

    invoke-static {v5, v8, p1, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onEchoStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/extraphoto/sdk/BaseEchoListener$1;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/sdk/BaseEchoListener$1;-><init>(Lcom/miui/extraphoto/sdk/BaseEchoListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public abstract onEnd(Ljava/lang/String;Z)V
.end method

.method public abstract onStart()V
.end method
