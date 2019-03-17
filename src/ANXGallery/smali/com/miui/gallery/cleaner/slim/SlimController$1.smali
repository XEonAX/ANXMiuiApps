.class Lcom/miui/gallery/cleaner/slim/SlimController$1;
.super Ljava/lang/Object;
.source "SlimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cleaner/slim/SlimController;->onSlimProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$1;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    iput p2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$1;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$200(Lcom/miui/gallery/cleaner/slim/SlimController;)Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

    move-result-object v1

    iget v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$1;->val$id:I

    int-to-long v2, v0

    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$1;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->getReleaseSize()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$1;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->getRemainCount()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->onSlimProgress(JJI)V

    .line 182
    return-void
.end method
