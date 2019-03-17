.class Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;
.super Ljava/lang/Object;
.source "DoodleMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field private final mDoodleData:Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;

.field private final mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;I)V
    .locals 0
    .param p2, "doodleData"    # Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;
    .param p3, "index"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->mDoodleData:Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;

    .line 114
    iput p3, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->mIndex:I

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;ILcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$200(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->mDoodleData:Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;->setDoodleData(Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;)V

    .line 120
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->mIndex:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$300(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$300(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$400(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$300(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->setSelected(Z)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;->mIndex:I

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->access$302(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;I)I

    goto :goto_0
.end method
