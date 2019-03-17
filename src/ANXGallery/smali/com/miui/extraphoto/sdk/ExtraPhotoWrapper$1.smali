.class Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;
.super Ljava/lang/Object;
.source "ExtraPhotoWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->bindService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    iput-object p2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-static {v3}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$000(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const-string v3, "ExtraPhotoWrapper"

    const-string v4, "has bind service"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.extraphoto.action.EXTRA_PHOTO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "com.miui.extraphoto"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 65
    .local v0, "bind":Z
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$002(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Z)Z

    .line 66
    const-string v3, "ExtraPhotoWrapper"

    const-string v4, "bind %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    if-nez v0, :cond_0

    .line 68
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$100(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "bind":Z
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ExtraPhotoWrapper"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-static {v3, v6}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$100(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Z)V

    goto :goto_0
.end method
