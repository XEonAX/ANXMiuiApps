.class Lcom/nexstreaming/nexeditorsdk/nexEngine$3;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Lcom/nexstreaming/nexeditorsdk/nexExportFormat;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)V
    .locals 0

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;->b:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;->a:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;->a:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportDone(Landroid/graphics/Bitmap;)V

    .line 2070
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 2063
    mul-int/lit8 v0, p1, 0x64

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;->b:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v1

    div-int/2addr v0, v1

    .line 2064
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;->a:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportProgress(I)V

    .line 2065
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$3;->a:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportFail(Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;)V

    .line 2059
    return-void
.end method
