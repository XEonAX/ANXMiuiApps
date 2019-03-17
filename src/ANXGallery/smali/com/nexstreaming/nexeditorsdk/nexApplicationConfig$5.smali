.class final Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$5;
.super Ljava/lang/Object;
.source "nexApplicationConfig.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->waitForLoading(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$5;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$5;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 564
    return-void
.end method
