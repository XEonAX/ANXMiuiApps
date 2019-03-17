.class public abstract Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Translator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/editor/photo/core/RenderData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty",
            "<TT;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty",
            "<TT;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;, "Lcom/miui/gallery/editor/photo/core/RenderScript$Translator<TT;>;"
    .local p1, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty<TT;*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;->mProperties:Ljava/util/Map;

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty;

    .line 313
    .local v0, "property":Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty;, "Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty<TT;*>;"
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;->mProperties:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    .end local v0    # "property":Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty;, "Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty<TT;*>;"
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;->mProperties:Ljava/util/Map;

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 317
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t use \'type\' for property."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;->mProperties:Ljava/util/Map;

    const-string/jumbo v2, "type"

    new-instance v3, Lcom/miui/gallery/editor/photo/core/RenderScript$Type;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/core/RenderScript$Type;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-void
.end method
