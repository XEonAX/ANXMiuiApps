.class Lcom/miui/gallery/video/editor/ui/AudioFragment$1;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/AudioFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyAction()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->doApply()Z

    .line 100
    return-void
.end method

.method public onCancelAction()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->doCancel()Z

    .line 95
    return-void
.end method
