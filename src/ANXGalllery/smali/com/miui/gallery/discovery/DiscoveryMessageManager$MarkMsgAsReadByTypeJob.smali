.class Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;
.super Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;
.source "DiscoveryMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/DiscoveryMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkMsgAsReadByTypeJob"
.end annotation


# instance fields
.field private mMsgType:I

.field final synthetic this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "msgType"    # I

    .prologue
    .line 405
    iput-object p1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadJob;-><init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Landroid/content/Context;)V

    .line 407
    iput p3, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;->mMsgType:I

    .line 408
    return-void
.end method


# virtual methods
.method protected getMessages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 413
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    iget v2, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$MarkMsgAsReadByTypeJob;->mMsgType:I

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->loadMessage(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
