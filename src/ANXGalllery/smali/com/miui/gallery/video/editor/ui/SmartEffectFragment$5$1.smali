.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadSmartEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;>;"
    new-instance v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
