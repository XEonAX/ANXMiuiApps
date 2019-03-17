.class final Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$2;
.super Ljava/lang/Object;
.source "ComponentsStrategy.java"

# interfaces
.implements Lcom/miui/gallery/cloudcontrol/Merger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/cloudcontrol/Merger",
        "<",
        "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public merge(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    .locals 1
    .param p1, "local"    # Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
    .param p2, "cloud"    # Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    .prologue
    .line 247
    invoke-static {p2}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$000(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 248
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$000(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$000(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$002(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 255
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$100(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 256
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$100(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$100(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$102(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 263
    :cond_3
    :goto_1
    return-object p2

    .line 251
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$000(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$002(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 259
    :cond_5
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$100(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;->access$102(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    check-cast p1, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    check-cast p2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$2;->merge(Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    move-result-object v0

    return-object v0
.end method
