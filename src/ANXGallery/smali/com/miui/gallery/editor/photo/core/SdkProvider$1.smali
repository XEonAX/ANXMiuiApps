.class final Lcom/miui/gallery/editor/photo/core/SdkProvider$1;
.super Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;
.source "SdkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/SdkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/RenderScript$Translator",
        "<",
        "Lcom/miui/gallery/editor/photo/core/RenderData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 131
    .local p1, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderScript$JsonProperty<Lcom/miui/gallery/editor/photo/core/RenderData;*>;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/RenderScript$Translator;-><init>(Ljava/util/List;)V

    return-void
.end method
