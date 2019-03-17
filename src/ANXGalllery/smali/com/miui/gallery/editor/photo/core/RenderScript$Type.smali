.class final Lcom/miui/gallery/editor/photo/core/RenderScript$Type;
.super Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/editor/photo/core/RenderData;",
        ">",
        "Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty",
        "<TT;",
        "Lcom/miui/gallery/editor/photo/core/Effect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 199
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/RenderScript$Type;, "Lcom/miui/gallery/editor/photo/core/RenderScript$Type<TT;>;"
    const-class v0, Lcom/miui/gallery/editor/photo/core/Effect;

    const-string/jumbo v1, "type"

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
.method public get(Lcom/miui/gallery/editor/photo/core/RenderData;)Lcom/miui/gallery/editor/photo/core/Effect;
    .locals 1
    .param p1, "obj"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 204
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/RenderScript$Type;, "Lcom/miui/gallery/editor/photo/core/RenderScript$Type<TT;>;"
    iget-object v0, p1, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/RenderScript$Type;, "Lcom/miui/gallery/editor/photo/core/RenderScript$Type<TT;>;"
    check-cast p1, Lcom/miui/gallery/editor/photo/core/RenderData;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/RenderScript$Type;->get(Lcom/miui/gallery/editor/photo/core/RenderData;)Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/miui/gallery/editor/photo/core/RenderData;Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 0
    .param p1, "obj"    # Lcom/miui/gallery/editor/photo/core/RenderData;
    .param p2, "value"    # Lcom/miui/gallery/editor/photo/core/Effect;

    .prologue
    .line 209
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/RenderScript$Type;, "Lcom/miui/gallery/editor/photo/core/RenderScript$Type<TT;>;"
    iput-object p2, p1, Lcom/miui/gallery/editor/photo/core/RenderData;->mType:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 210
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/RenderScript$Type;, "Lcom/miui/gallery/editor/photo/core/RenderScript$Type<TT;>;"
    check-cast p1, Lcom/miui/gallery/editor/photo/core/RenderData;

    check-cast p2, Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/RenderScript$Type;->set(Lcom/miui/gallery/editor/photo/core/RenderData;Lcom/miui/gallery/editor/photo/core/Effect;)V

    return-void
.end method
