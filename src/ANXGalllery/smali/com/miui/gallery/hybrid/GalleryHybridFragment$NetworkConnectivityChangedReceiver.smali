.class Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GalleryHybridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/GalleryHybridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p2, "x1"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    .line 466
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$2000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$2100(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$2002(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Z)Z

    .line 470
    return-void
.end method
