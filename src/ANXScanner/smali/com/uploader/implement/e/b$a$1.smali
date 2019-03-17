.class Lcom/uploader/implement/e/b$a$1;
.super Ljava/lang/Thread;
.source "ThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uploader/implement/e/b$a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uploader/implement/e/b$a;


# direct methods
.method constructor <init>(Lcom/uploader/implement/e/b$a;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Runnable;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/uploader/implement/e/b$a$1;->a:Lcom/uploader/implement/e/b$a;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/uploader/implement/e/b$a$1;->a:Lcom/uploader/implement/e/b$a;

    invoke-static {v0}, Lcom/uploader/implement/e/b$a;->a(Lcom/uploader/implement/e/b$a;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 42
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 43
    return-void
.end method
