.class Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;
.super Ljava/lang/Object;
.source "StoryNotificationMessageHandler.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->publishStoryNotification(Landroid/content/Context;ILcom/miui/gallery/card/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$notificationId:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    iput-object p2, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$notificationId:I

    iput-object p4, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    iget-object v1, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$notificationId:I

    iget-object v3, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$description:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->access$100(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 163
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    iget-object v1, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$notificationId:I

    iget-object v3, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$description:Ljava/lang/String;

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->access$100(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 158
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->this$0:Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;

    iget-object v1, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$notificationId:I

    iget-object v3, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;->val$description:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->access$100(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 153
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 148
    return-void
.end method
