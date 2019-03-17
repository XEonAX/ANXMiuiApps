.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;
.super Ljava/lang/Object;
.source "MovieEditorMenuFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const v5, 0x7f1201c7

    const v4, 0x7f1201c5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p2, v4, :cond_1

    .line 156
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2, v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;I)V

    .line 162
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v2

    if-ne p2, v5, :cond_3

    :goto_1
    invoke-interface {v2, v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->setShowDeleteMode(Z)V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    if-ne p2, v4, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 164
    return-void

    .line 157
    :cond_1
    const v2, 0x7f1201c6

    if-ne p2, v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v2, v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;I)V

    goto :goto_0

    .line 159
    :cond_2
    if-ne p2, v5, :cond_0

    .line 160
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 162
    goto :goto_1

    .line 163
    :cond_4
    const/4 v1, 0x4

    goto :goto_2
.end method
