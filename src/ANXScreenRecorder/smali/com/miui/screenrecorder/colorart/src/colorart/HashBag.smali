.class public Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;
.super Ljava/util/HashMap;
.source "HashBag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;, "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag<TK;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;, "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag<TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;, "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag<TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;, "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag<TK;>;"
    invoke-virtual {p0}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
