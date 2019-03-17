.class Lcom/xiaomi/network/HostManager$1;
.super Ljava/lang/Object;
.source "HostManager.java"

# interfaces
.implements Lcom/xiaomi/network/HostFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/network/HostManager;-><init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/network/HostManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/network/HostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/network/HostManager;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/xiaomi/network/HostManager$1;->this$0:Lcom/xiaomi/network/HostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method
