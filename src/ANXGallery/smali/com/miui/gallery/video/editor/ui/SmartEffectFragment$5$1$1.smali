.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;->onFinished(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;

.field final synthetic val$templates:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;->val$templates:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->access$400(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/manager/SmartEffectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;->val$templates:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;->val$smartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/manager/SmartEffectManager;->updateDataWithTemplate(Ljava/util/List;Lcom/miui/gallery/video/editor/SmartEffect;)V

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1$1;->this$2:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;

    iget v1, v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->notifyDateSetChanged(I)V

    .line 330
    return-void
.end method
