.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyAction()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->doApply()Z

    .line 100
    return-void
.end method

.method public onCancelAction()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->doCancel()Z

    .line 95
    return-void
.end method
