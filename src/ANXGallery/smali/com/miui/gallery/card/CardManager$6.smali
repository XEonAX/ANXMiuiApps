.class Lcom/miui/gallery/card/CardManager$6;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/CardManager;->triggerGuaranteeScenarios(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/CardManager;

.field final synthetic val$recordTriggerTime:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/CardManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/miui/gallery/card/CardManager$6;->this$0:Lcom/miui/gallery/card/CardManager;

    iput-boolean p2, p0, Lcom/miui/gallery/card/CardManager$6;->val$recordTriggerTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/miui/gallery/card/CardManager$6;->this$0:Lcom/miui/gallery/card/CardManager;

    iget-boolean v1, p0, Lcom/miui/gallery/card/CardManager$6;->val$recordTriggerTime:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardManager;->access$500(Lcom/miui/gallery/card/CardManager;Z)V

    .line 492
    const/4 v0, 0x0

    return-object v0
.end method
