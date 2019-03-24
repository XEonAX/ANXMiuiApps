.class Lcom/miui/internal/vip/VipServiceClient$2;
.super Ljava/lang/Object;
.source "VipServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/VipServiceClient;->notifyResult(Lmiui/vip/QueryCallback;ILcom/miui/internal/vip/VipResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/VipServiceClient;

.field final synthetic val$callback:Lmiui/vip/QueryCallback;

.field final synthetic val$res:Lcom/miui/internal/vip/VipResponse;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/VipServiceClient;ILcom/miui/internal/vip/VipResponse;Lmiui/vip/QueryCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/internal/vip/VipServiceClient;

    .line 217
    iput-object p1, p0, Lcom/miui/internal/vip/VipServiceClient$2;->this$0:Lcom/miui/internal/vip/VipServiceClient;

    iput p2, p0, Lcom/miui/internal/vip/VipServiceClient$2;->val$type:I

    iput-object p3, p0, Lcom/miui/internal/vip/VipServiceClient$2;->val$res:Lcom/miui/internal/vip/VipResponse;

    iput-object p4, p0, Lcom/miui/internal/vip/VipServiceClient$2;->val$callback:Lmiui/vip/QueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/miui/internal/vip/VipServiceClient$2;->this$0:Lcom/miui/internal/vip/VipServiceClient;

    iget v1, p0, Lcom/miui/internal/vip/VipServiceClient$2;->val$type:I

    iget-object v2, p0, Lcom/miui/internal/vip/VipServiceClient$2;->val$res:Lcom/miui/internal/vip/VipResponse;

    iget-object v3, p0, Lcom/miui/internal/vip/VipServiceClient$2;->val$callback:Lmiui/vip/QueryCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/internal/vip/VipServiceClient;->access$100(Lcom/miui/internal/vip/VipServiceClient;ILcom/miui/internal/vip/VipResponse;Lmiui/vip/QueryCallback;)V

    .line 221
    return-void
.end method
