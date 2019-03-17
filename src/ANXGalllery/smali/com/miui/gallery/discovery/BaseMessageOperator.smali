.class public abstract Lcom/miui/gallery/discovery/BaseMessageOperator;
.super Ljava/lang/Object;
.source "BaseMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;,
        Lcom/miui/gallery/discovery/BaseMessageOperator$InsertTask;,
        Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SaveParams:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static sDiscoveryMessageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$DiscoveryMessage;->URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/gallery/discovery/BaseMessageOperator;->sDiscoveryMessageUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator;, "Lcom/miui/gallery/discovery/BaseMessageOperator<TSaveParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract doMarkMessageAsRead(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)Z
.end method

.method protected abstract doSaveMessage(Landroid/content/Context;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TSaveParams;)Z"
        }
    .end annotation
.end method

.method protected doUpdateMessage(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 61
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator;, "Lcom/miui/gallery/discovery/BaseMessageOperator<TSaveParams;>;"
    new-instance v0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;-><init>(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->run()Z

    move-result v0

    return v0
.end method

.method protected abstract doWrapMessage(Lcom/miui/gallery/model/DiscoveryMessage;Ljava/lang/String;)V
.end method

.method public abstract getMessageType()I
.end method

.method public markMessageAsRead(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator;, "Lcom/miui/gallery/discovery/BaseMessageOperator<TSaveParams;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/discovery/BaseMessageOperator;->doMarkMessageAsRead(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)Z

    move-result v0

    return v0
.end method

.method protected queryMessageByType(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator;, "Lcom/miui/gallery/discovery/BaseMessageOperator<TSaveParams;>;"
    const/4 v2, 0x0

    .line 43
    const-string/jumbo v3, "type = ?"

    .line 44
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/discovery/BaseMessageOperator;->sDiscoveryMessageUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator;->getMessageType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public saveMessage(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TSaveParams;)Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator;, "Lcom/miui/gallery/discovery/BaseMessageOperator<TSaveParams;>;"
    .local p2, "saveParams":Ljava/lang/Object;, "TSaveParams;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/discovery/BaseMessageOperator;->doSaveMessage(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public wrapMessage(Lcom/miui/gallery/model/DiscoveryMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;
    .param p2, "extraDataJson"    # Ljava/lang/String;

    .prologue
    .line 28
    .local p0, "this":Lcom/miui/gallery/discovery/BaseMessageOperator;, "Lcom/miui/gallery/discovery/BaseMessageOperator<TSaveParams;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/discovery/BaseMessageOperator;->doWrapMessage(Lcom/miui/gallery/model/DiscoveryMessage;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
