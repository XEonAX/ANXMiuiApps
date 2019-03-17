.class Lcom/xiaomi/push/mpcd/JobController$1;
.super Ljava/lang/Object;
.source "JobController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/mpcd/JobController;->schedulerJob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/mpcd/JobController;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/mpcd/JobController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/mpcd/JobController;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/JobController$1;->this$0:Lcom/xiaomi/push/mpcd/JobController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/JobController$1;->this$0:Lcom/xiaomi/push/mpcd/JobController;

    invoke-static {v0}, Lcom/xiaomi/push/mpcd/JobController;->access$000(Lcom/xiaomi/push/mpcd/JobController;)V

    .line 66
    return-void
.end method
