.class Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onUiOrientationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    .prologue
    .line 2614
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipped(Z)V

    .line 2620
    :cond_0
    return-void
.end method
