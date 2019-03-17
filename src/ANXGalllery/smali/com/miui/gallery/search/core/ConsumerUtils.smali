.class public Lcom/miui/gallery/search/core/ConsumerUtils;
.super Ljava/lang/Object;
.source "ConsumerUtils.java"


# direct methods
.method public static consumeAsync(Landroid/os/Handler;Lcom/miui/gallery/search/core/Consumer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/miui/gallery/search/core/Consumer",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "consumer":Lcom/miui/gallery/search/core/Consumer;, "Lcom/miui/gallery/search/core/Consumer<TA;>;"
    .local p2, "value":Ljava/lang/Object;, "TA;"
    if-nez p0, :cond_0

    .line 30
    invoke-interface {p1, p2}, Lcom/miui/gallery/search/core/Consumer;->consume(Ljava/lang/Object;)Z

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/ConsumerUtils$1;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/search/core/ConsumerUtils$1;-><init>(Lcom/miui/gallery/search/core/Consumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
