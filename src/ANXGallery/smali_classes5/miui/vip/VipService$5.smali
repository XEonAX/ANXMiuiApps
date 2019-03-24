.class Lmiui/vip/VipService$5;
.super Ljava/lang/Object;
.source "VipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/vip/VipService;->sendStatistic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipService;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/vip/VipService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/vip/VipService;

    .line 224
    iput-object p1, p0, Lmiui/vip/VipService$5;->this$0:Lmiui/vip/VipService;

    iput-object p2, p0, Lmiui/vip/VipService$5;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 227
    iget-object v0, p0, Lmiui/vip/VipService$5;->this$0:Lmiui/vip/VipService;

    iget-object v0, v0, Lmiui/vip/VipService;->mService:Lcom/miui/internal/vip/VipServiceClient;

    iget-object v1, p0, Lmiui/vip/VipService$5;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/internal/vip/VipServiceClient;->sendStatistic(Ljava/lang/String;)V

    .line 228
    return-void
.end method
