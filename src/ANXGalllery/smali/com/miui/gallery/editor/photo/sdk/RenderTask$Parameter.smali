.class Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;
.super Ljava/lang/Object;
.source "RenderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/sdk/RenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameter"
.end annotation


# instance fields
.field mOutput:Landroid/net/Uri;

.field mSource:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "source"    # Landroid/net/Uri;
    .param p2, "output"    # Landroid/net/Uri;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mSource:Landroid/net/Uri;

    .line 161
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mOutput:Landroid/net/Uri;

    .line 162
    return-void
.end method
