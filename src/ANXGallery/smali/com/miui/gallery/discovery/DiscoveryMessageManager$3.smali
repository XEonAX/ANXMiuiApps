.class Lcom/miui/gallery/discovery/DiscoveryMessageManager$3;
.super Ljava/lang/Object;
.source "DiscoveryMessageManager.java"

# interfaces
.implements Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/discovery/DiscoveryMessageManager;->createFilterByType(I)Lcom/miui/gallery/discovery/DiscoveryMessageManager$MessageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$3;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/gallery/model/DiscoveryMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/miui/gallery/model/DiscoveryMessage;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
