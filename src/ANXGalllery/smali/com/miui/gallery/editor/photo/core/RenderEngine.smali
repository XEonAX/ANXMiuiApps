.class public abstract Lcom/miui/gallery/editor/photo/core/RenderEngine;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findEngine(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/RenderData;[Lcom/miui/gallery/editor/photo/core/RenderEngine;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/RenderData;
    .param p2, "allocatedEngines"    # [Lcom/miui/gallery/editor/photo/core/RenderEngine;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/RenderData;->getType()Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    .line 62
    .local v0, "effect":Lcom/miui/gallery/editor/photo/core/Effect;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    aget-object v1, p2, v3

    .line 63
    .local v1, "engine":Lcom/miui/gallery/editor/photo/core/RenderEngine;
    if-nez v1, :cond_0

    .line 64
    sget-object v3, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/editor/photo/core/SdkManager;->getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v2

    .line 65
    .local v2, "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v2, p0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    aput-object v1, p2, v3

    .line 70
    .end local v2    # "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    :cond_0
    return-object v1
.end method

.method public static render(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/List;[Lcom/miui/gallery/editor/photo/core/RenderEngine;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "allocatedEngines"    # [Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;[",
            "Lcom/miui/gallery/editor/photo/core/RenderEngine;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderData;>;"
    const/4 v7, 0x0

    .line 21
    if-nez p1, :cond_1

    .line 22
    const-string v8, "RenderEngine"

    const-string v9, "no bitmap need to render"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return-object v7

    .line 26
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 27
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_2
    if-ge v3, v6, :cond_5

    .line 28
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/RenderData;

    .line 30
    .local v0, "current":Lcom/miui/gallery/editor/photo/core/RenderData;
    add-int/lit8 v4, v3, 0x1

    .line 31
    .local v4, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 32
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/RenderData;

    .line 33
    .local v1, "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    const-string v8, "RenderEngine"

    const-string/jumbo v9, "try merge %s with %s"

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/RenderData;->getType()Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v10

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/RenderData;->getType()Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/RenderData;->merge(Lcom/miui/gallery/editor/photo/core/RenderData;)Lcom/miui/gallery/editor/photo/core/RenderData;

    move-result-object v5

    .line 35
    .local v5, "next":Lcom/miui/gallery/editor/photo/core/RenderData;
    if-eqz v5, :cond_3

    .line 36
    const-string v8, "RenderEngine"

    const-string v9, "merged"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    move-object v0, v5

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_1

    .line 39
    :cond_3
    const-string v8, "RenderEngine"

    const-string v9, "not support"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v1    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    .end local v5    # "next":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_4
    move v3, v4

    .line 46
    invoke-static {p0, v0, p3}, Lcom/miui/gallery/editor/photo/core/RenderEngine;->findEngine(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/RenderData;[Lcom/miui/gallery/editor/photo/core/RenderEngine;)Lcom/miui/gallery/editor/photo/core/RenderEngine;

    move-result-object v2

    .line 47
    .local v2, "engine":Lcom/miui/gallery/editor/photo/core/RenderEngine;
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2, p1, v0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;->render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    const-string v8, "RenderEngine"

    const-string v9, "render %s failed, return"

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/RenderData;->getType()Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    .end local v0    # "current":Lcom/miui/gallery/editor/photo/core/RenderData;
    .end local v2    # "engine":Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .end local v4    # "j":I
    :cond_5
    const-string v7, "RenderEngine"

    const-string v8, "render %d finish"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, p1

    .line 57
    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public abstract render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
.end method
