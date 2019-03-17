.class Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;
.super Ljava/lang/Object;
.source "DiscoveryMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/discovery/DiscoveryMessageManager;->notifyChangeByMessageType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

.field final synthetic val$observer:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;


# direct methods
.method constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    iput-object p2, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;->val$observer:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;->val$observer:Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/loader/DiscoveryMessageLoader$ForceLoadContentObserver;->onChange(Z)V

    .line 150
    return-void
.end method
