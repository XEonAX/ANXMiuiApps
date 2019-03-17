.class Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$4;
.super Ljava/lang/Object;
.source "FilterAdjustFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyAction()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->doApply()Z

    .line 147
    return-void
.end method

.method public onCancelAction()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->doCancel()Z

    .line 142
    return-void
.end method
