.class Lcom/miui/gallery/util/FileCompressTask$2;
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

.field final synthetic val$fails:Ljava/util/List;

.field final synthetic val$success:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/FileCompressTask;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/FileCompressTask;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/util/FileCompressTask$2;->this$0:Lcom/miui/gallery/util/FileCompressTask;

    iput-object p2, p0, Lcom/miui/gallery/util/FileCompressTask$2;->val$success:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/gallery/util/FileCompressTask$2;->val$fails:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/util/FileCompressTask$2;->this$0:Lcom/miui/gallery/util/FileCompressTask;

    invoke-static {v0}, Lcom/miui/gallery/util/FileCompressTask;->access$000(Lcom/miui/gallery/util/FileCompressTask;)Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;->onCompressProgress(F)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/util/FileCompressTask$2;->this$0:Lcom/miui/gallery/util/FileCompressTask;

    invoke-static {v0}, Lcom/miui/gallery/util/FileCompressTask;->access$000(Lcom/miui/gallery/util/FileCompressTask;)Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/FileCompressTask$2;->val$success:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/util/FileCompressTask$2;->val$fails:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;->onCompressComplete(Ljava/util/List;Ljava/util/List;)V

    .line 86
    return-void
.end method
