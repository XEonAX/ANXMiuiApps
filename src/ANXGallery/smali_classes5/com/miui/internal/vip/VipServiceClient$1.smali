.class Lcom/miui/internal/vip/VipServiceClient$1;
.super Lcom/miui/internal/vip/VipServiceClient$Selector;
.source "VipServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/VipServiceClient;->notifyResult(ILcom/miui/internal/vip/VipResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/VipServiceClient;

.field final synthetic val$res:Lcom/miui/internal/vip/VipResponse;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/VipServiceClient;ILcom/miui/internal/vip/VipResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/internal/vip/VipServiceClient;

    .line 203
    iput-object p1, p0, Lcom/miui/internal/vip/VipServiceClient$1;->this$0:Lcom/miui/internal/vip/VipServiceClient;

    iput p2, p0, Lcom/miui/internal/vip/VipServiceClient$1;->val$type:I

    iput-object p3, p0, Lcom/miui/internal/vip/VipServiceClient$1;->val$res:Lcom/miui/internal/vip/VipResponse;

    invoke-direct {p0}, Lcom/miui/internal/vip/VipServiceClient$Selector;-><init>()V

    return-void
.end method


# virtual methods
.method public isFound(Lmiui/vip/QueryCallback;)Z
    .locals 3
    .param p1, "callback"    # Lmiui/vip/QueryCallback;

    .line 206
    iget v0, p0, Lcom/miui/internal/vip/VipServiceClient$1;->val$type:I

    invoke-virtual {p1, v0}, Lmiui/vip/QueryCallback;->isMonitorType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/miui/internal/vip/VipServiceClient$1;->this$0:Lcom/miui/internal/vip/VipServiceClient;

    iget v1, p0, Lcom/miui/internal/vip/VipServiceClient$1;->val$type:I

    iget-object v2, p0, Lcom/miui/internal/vip/VipServiceClient$1;->val$res:Lcom/miui/internal/vip/VipResponse;

    invoke-static {v0, p1, v1, v2}, Lcom/miui/internal/vip/VipServiceClient;->access$000(Lcom/miui/internal/vip/VipServiceClient;Lmiui/vip/QueryCallback;ILcom/miui/internal/vip/VipResponse;)V

    .line 208
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
