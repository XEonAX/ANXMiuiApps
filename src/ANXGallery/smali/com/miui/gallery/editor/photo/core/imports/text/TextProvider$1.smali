.class Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$1;
.super Ljava/lang/Object;
.source "TextProvider.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "watermarkInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;>;"
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->access$002(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;Ljava/util/List;)Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    .line 75
    .local v1, "watermarkInfo":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;-><init>(SLcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;)V

    .line 76
    .local v0, "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->access$000(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v0    # "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    .end local v1    # "watermarkInfo":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;)V

    .line 79
    return-void
.end method
