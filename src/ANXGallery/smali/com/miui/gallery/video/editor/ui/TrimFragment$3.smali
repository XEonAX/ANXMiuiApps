.class Lcom/miui/gallery/video/editor/ui/TrimFragment$3;
.super Ljava/lang/Object;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/TrimFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyAction()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->doApply()Z

    .line 113
    return-void
.end method

.method public onCancelAction()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$3;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->doCancel()Z

    .line 108
    return-void
.end method
