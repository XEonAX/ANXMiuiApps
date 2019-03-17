.class Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$TouchListener;
.super Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener;
.source "ItemClickSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$TouchListener;->this$0:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    .line 117
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/recyclerview/ClickItemTouchListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 118
    return-void
.end method


# virtual methods
.method performItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z
    .locals 10
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$TouchListener;->this$0:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->access$000(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$TouchListener;->this$0:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->access$000(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;->onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z

    move-result v8

    .line 124
    .local v8, "handled":Z
    if-eqz v8, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 130
    .end local v8    # "handled":Z
    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method performItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJFF)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "x"    # F
    .param p7, "y"    # F

    .prologue
    const/4 v7, 0x0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$TouchListener;->this$0:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->access$100(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$TouchListener;->this$0:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->access$100(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;->onItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v6

    .line 137
    .local v6, "handled":Z
    if-eqz v6, :cond_0

    .line 138
    invoke-virtual {p2, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 143
    .end local v6    # "handled":Z
    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method
