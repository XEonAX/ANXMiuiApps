.class Lcom/miui/gallery/cloudcontrol/ProfileCache$2;
.super Ljava/lang/Object;
.source "ProfileCache.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloudcontrol/ProfileCache;->loadFromDB(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloudcontrol/ProfileCache;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloudcontrol/ProfileCache;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$2;->this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    iput-wide p2, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$2;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 268
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$2;->this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-static {v1}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->access$000(Lcom/miui/gallery/cloudcontrol/ProfileCache;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 270
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->fromCursor(Landroid/database/Cursor;)Lcom/miui/gallery/cloudcontrol/FeatureDBItem;

    move-result-object v0

    .line 272
    .local v0, "featureDbItem":Lcom/miui/gallery/cloudcontrol/FeatureDBItem;
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$2;->this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-static {v1}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->access$100(Lcom/miui/gallery/cloudcontrol/ProfileCache;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    .end local v0    # "featureDbItem":Lcom/miui/gallery/cloudcontrol/FeatureDBItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    const-string v1, "CloudControl.ProfileCache"

    const-string v2, "Load %d items from database, cost %d ms."

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$2;->val$start:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 277
    :cond_1
    const-string v1, "CloudControl.ProfileCache"

    const-string v2, "Fill cache failed with a null cursor."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
