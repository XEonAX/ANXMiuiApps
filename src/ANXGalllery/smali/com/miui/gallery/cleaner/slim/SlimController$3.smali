.class Lcom/miui/gallery/cleaner/slim/SlimController$3;
.super Ljava/lang/Object;
.source "SlimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cleaner/slim/SlimController;->onSlimResumed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/slim/SlimController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$3;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$3;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$200(Lcom/miui/gallery/cleaner/slim/SlimController;)Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->onSlimResumed()V

    .line 200
    return-void
.end method
