.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;
.super Ljava/lang/Object;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private b:I


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->b:I

    .line 406
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 408
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->b:I

    .line 409
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->b:I

    .line 410
    return v0
.end method
