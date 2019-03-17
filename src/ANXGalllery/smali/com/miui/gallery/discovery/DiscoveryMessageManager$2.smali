.class Lcom/miui/gallery/discovery/DiscoveryMessageManager$2;
.super Ljava/lang/Object;
.source "DiscoveryMessageManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/discovery/DiscoveryMessageManager;->createComparatorByType(I)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/model/DiscoveryMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/miui/gallery/discovery/DiscoveryMessageManager$2;->this$0:Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/model/DiscoveryMessage;Lcom/miui/gallery/model/DiscoveryMessage;)I
    .locals 6
    .param p1, "lhs"    # Lcom/miui/gallery/model/DiscoveryMessage;
    .param p2, "rhs"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 166
    invoke-virtual {p1}, Lcom/miui/gallery/model/DiscoveryMessage;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getPriority()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/miui/gallery/model/DiscoveryMessage;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getUpdateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 168
    const/4 v0, 0x0

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/model/DiscoveryMessage;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getUpdateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/model/DiscoveryMessage;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/gallery/model/DiscoveryMessage;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 163
    check-cast p1, Lcom/miui/gallery/model/DiscoveryMessage;

    check-cast p2, Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$2;->compare(Lcom/miui/gallery/model/DiscoveryMessage;Lcom/miui/gallery/model/DiscoveryMessage;)I

    move-result v0

    return v0
.end method
