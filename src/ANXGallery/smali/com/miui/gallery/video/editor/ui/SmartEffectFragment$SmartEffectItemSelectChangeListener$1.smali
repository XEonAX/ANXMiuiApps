.class Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$1;
.super Ljava/lang/Object;
.source "SmartEffectFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->recordEventWithEffectChanged()V

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener$1;->this$1:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->updatePalyBtnView()V

    .line 238
    return-void
.end method
