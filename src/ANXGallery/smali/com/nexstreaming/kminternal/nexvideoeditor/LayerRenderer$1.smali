.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$1;
.super Landroid/graphics/ColorMatrix;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$1;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 148
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$1;->set([F)V

    .line 153
    return-void

    .line 148
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
