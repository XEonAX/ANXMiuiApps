.class Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->access$100(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$FilterContext;->surfaceCreated()V

    .line 70
    return-void
.end method
