.class Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;
.super Lcom/miui/internal/vip/VipServiceClient$Selector;
.source "VipServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/VipServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerSelector"
.end annotation


# instance fields
.field mListener:Lmiui/vip/QueryCallback;

.field final synthetic this$0:Lcom/miui/internal/vip/VipServiceClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/VipServiceClient;Lmiui/vip/QueryCallback;)V
    .locals 0
    .param p2, "listener"    # Lmiui/vip/QueryCallback;

    .line 128
    iput-object p1, p0, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;->this$0:Lcom/miui/internal/vip/VipServiceClient;

    invoke-direct {p0}, Lcom/miui/internal/vip/VipServiceClient$Selector;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;->mListener:Lmiui/vip/QueryCallback;

    .line 130
    return-void
.end method


# virtual methods
.method public isFound(Lmiui/vip/QueryCallback;)Z
    .locals 1
    .param p1, "callback"    # Lmiui/vip/QueryCallback;

    .line 134
    iget-object v0, p0, Lcom/miui/internal/vip/VipServiceClient$ListenerSelector;->mListener:Lmiui/vip/QueryCallback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
