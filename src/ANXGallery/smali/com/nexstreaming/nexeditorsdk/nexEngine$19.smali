.class Lcom/nexstreaming/nexeditorsdk/nexEngine$19;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;->exportJpeg(Ljava/lang/String;IIILcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;)V
    .locals 0

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$19;->b:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$19;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$19;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;->onCapture(Landroid/graphics/Bitmap;)V

    .line 1767
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$19;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCaptureListener;->onCaptureFail(Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;)V

    .line 1772
    return-void
.end method
