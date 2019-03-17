.class Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;
.super Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;
.source "PermissionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mSectionDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mSectionDividerHeight:I

.field final synthetic this$0:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->this$0:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;

    invoke-direct {p0}, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;Lcom/miui/gallery/permission/PermissionsDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;
    .param p2, "x1"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;-><init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerHeight:I

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawSection(Landroid/graphics/Canvas;Landroid/view/View;II)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 199
    .local v1, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 200
    .local v2, "top":I
    iget v3, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerHeight:I

    add-int v0, v2, v3

    .line 201
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p3, v2, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    iget-object v3, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 208
    .local v2, "position":I
    if-lez v2, :cond_0

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->init(Landroid/content/Context;)V

    .line 210
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;

    .line 211
    .local v0, "adapter":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;
    invoke-static {v0}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->access$300(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    .line 212
    .local v1, "permission":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;
    invoke-static {v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;->access$200(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget v3, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mSectionDividerHeight:I

    invoke-virtual {p1, v4, v3, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 218
    .end local v0    # "adapter":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;
    .end local v1    # "permission":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 174
    .local v2, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingStart()I

    move-result v5

    .line 175
    .local v5, "parentLeft":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingEnd()I

    move-result v10

    sub-int v6, v9, v10

    .line 176
    .local v6, "parentRight":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;

    .line 177
    .local v0, "adapter":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 178
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    .line 180
    .local v8, "position":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 181
    if-lez v8, :cond_1

    .line 182
    invoke-static {v0}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->access$300(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    .line 183
    .local v7, "permission":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;
    invoke-static {v7}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;->access$200(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 184
    invoke-virtual {p0, p1, v1, v5, v6}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->drawSection(Landroid/graphics/Canvas;Landroid/view/View;II)V

    .line 177
    .end local v7    # "permission":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    if-nez v8, :cond_2

    move v4, v5

    .line 189
    .local v4, "left":I
    :goto_2
    invoke-virtual {p0, p1, v1, v4, v6}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->drawTop(Landroid/graphics/Canvas;Landroid/view/View;II)V

    .line 190
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    .line 191
    invoke-virtual {p0, p1, v1, v5, v6}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->drawBottom(Landroid/graphics/Canvas;Landroid/view/View;II)V

    goto :goto_1

    .line 188
    .end local v4    # "left":I
    :cond_2
    iget v9, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;->mPaddingStart:I

    add-int v4, v5, v9

    goto :goto_2

    .line 195
    .end local v1    # "child":Landroid/view/View;
    .end local v8    # "position":I
    :cond_3
    return-void
.end method
