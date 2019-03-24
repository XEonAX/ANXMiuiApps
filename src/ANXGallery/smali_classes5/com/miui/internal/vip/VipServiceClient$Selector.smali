.class abstract Lcom/miui/internal/vip/VipServiceClient$Selector;
.super Ljava/lang/Object;
.source "VipServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/VipServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Selector"
.end annotation


# instance fields
.field public isRemoveFoundItem:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/vip/VipServiceClient$Selector;->isRemoveFoundItem:Z

    return-void
.end method


# virtual methods
.method public abstract isFound(Lmiui/vip/QueryCallback;)Z
.end method
