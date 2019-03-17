.class Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;
.super Ljava/lang/Object;
.source "StoryNotificationMessageHandler.java"

# interfaces
.implements Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->handleDirect(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;->this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    iput-object p2, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationCardGet(Lcom/miui/gallery/card/Card;)V
    .locals 3
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isOutofDate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;->this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    iget-object v1, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;->val$id:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->access$000(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILcom/miui/gallery/card/Card;)V

    .line 119
    :cond_0
    return-void
.end method
