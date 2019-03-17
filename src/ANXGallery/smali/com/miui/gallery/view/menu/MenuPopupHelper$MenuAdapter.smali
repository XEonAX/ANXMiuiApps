.class Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/view/menu/MenuPopupHelper;Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 1
    .param p2, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 315
    iput-object p2, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 316
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 357
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    invoke-static {v5}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->access$400(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->getExpandedItem()Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v1

    .line 358
    .local v1, "expandedItem":Lcom/miui/gallery/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 359
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    invoke-static {v5}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->access$400(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 360
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 361
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 362
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 363
    .local v3, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 364
    iput v2, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 370
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 361
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->access$100(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 321
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 323
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 325
    :goto_1
    return v1

    .line 321
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 325
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/miui/gallery/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 329
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->access$100(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 330
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 331
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 332
    add-int/lit8 p1, p1, 0x1

    .line 334
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    return-object v1

    .line 330
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 340
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 344
    if-nez p2, :cond_0

    .line 345
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->access$300(Lcom/miui/gallery/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    invoke-static {v2}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->access$200(Lcom/miui/gallery/view/menu/MenuPopupHelper;)I

    move-result v2

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 348
    check-cast v0, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    .line 349
    .local v0, "itemView":Lcom/miui/gallery/view/menu/MenuView$ItemView;
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/miui/gallery/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/miui/gallery/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 350
    check-cast v1, Lcom/miui/gallery/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/miui/gallery/view/menu/MenuView$ItemView;->initialize(Lcom/miui/gallery/view/menu/MenuItemImpl;I)V

    .line 353
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 375
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 376
    return-void
.end method
