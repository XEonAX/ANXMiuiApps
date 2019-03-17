.class public final enum Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;
.super Ljava/lang/Enum;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

.field public static final enum Export:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

.field public static final enum Preview:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    const-string v1, "Preview"

    invoke-direct {v0, v1, v2, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->Preview:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    const-string v1, "Export"

    invoke-direct {v0, v1, v3, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->Export:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->Preview:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->Export:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->id:I

    .line 134
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$RenderMode;

    return-object v0
.end method
