.class Lcom/miui/gallery/util/FileCompressTask$1;
.super Ljava/lang/Object;
.source "FileCompressTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/FileCompressTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/FileCompressTask;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/FileCompressTask;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/FileCompressTask;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/util/FileCompressTask$1;->this$0:Lcom/miui/gallery/util/FileCompressTask;

    iput p2, p0, Lcom/miui/gallery/util/FileCompressTask$1;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/util/FileCompressTask$1;->this$0:Lcom/miui/gallery/util/FileCompressTask;

    invoke-static {v0}, Lcom/miui/gallery/util/FileCompressTask;->access$000(Lcom/miui/gallery/util/FileCompressTask;)Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/FileCompressTask$1;->val$progress:F

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;->onCompressProgress(F)V

    .line 73
    return-void
.end method
