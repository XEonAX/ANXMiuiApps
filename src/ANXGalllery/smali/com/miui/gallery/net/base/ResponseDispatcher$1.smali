.class Lcom/miui/gallery/net/base/ResponseDispatcher$1;
.super Ljava/lang/Object;
.source "ResponseDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/net/base/ResponseDispatcher;->onResponse([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/net/base/ResponseDispatcher;

.field final synthetic val$response:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miui/gallery/net/base/ResponseDispatcher;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/net/base/ResponseDispatcher;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher$1;->this$0:Lcom/miui/gallery/net/base/ResponseDispatcher;

    iput-object p2, p0, Lcom/miui/gallery/net/base/ResponseDispatcher$1;->val$response:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher$1;->this$0:Lcom/miui/gallery/net/base/ResponseDispatcher;

    invoke-static {v1}, Lcom/miui/gallery/net/base/ResponseDispatcher;->access$000(Lcom/miui/gallery/net/base/ResponseDispatcher;)Lcom/miui/gallery/net/base/ResponseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/net/base/ResponseDispatcher$1;->val$response:[Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/miui/gallery/net/base/ResponseListener;->onResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher$1;->this$0:Lcom/miui/gallery/net/base/ResponseDispatcher;

    sget-object v2, Lcom/miui/gallery/net/base/ErrorCode;->DATA_BIND_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v1, v2, v3, v3}, Lcom/miui/gallery/net/base/ResponseDispatcher;->onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
