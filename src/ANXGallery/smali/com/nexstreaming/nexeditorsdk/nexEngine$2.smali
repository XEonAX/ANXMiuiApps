.class Lcom/nexstreaming/nexeditorsdk/nexEngine$2;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

.field final synthetic d:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Ljava/lang/String;ILcom/nexstreaming/nexeditorsdk/nexExportListener;)V
    .locals 0

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->d:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->b:I

    iput-object p4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 1978
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 1979
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1982
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1984
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1985
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->b:I

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1986
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1987
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    if-eqz v1, :cond_2

    .line 1993
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportDone(Landroid/graphics/Bitmap;)V

    .line 1998
    :cond_1
    :goto_1
    return-void

    .line 1988
    :catch_0
    move-exception v0

    .line 1989
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1990
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EXPORT_WRITER_INIT_FAIL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto :goto_0

    .line 1995
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->d:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2400(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1996
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->d:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2400(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_1
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    if-eqz v0, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportFail(Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;)V

    .line 2008
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->d:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2400(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$2;->d:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2400(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0
.end method
