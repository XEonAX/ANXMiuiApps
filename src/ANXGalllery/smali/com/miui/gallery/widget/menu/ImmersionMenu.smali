.class public Lcom/miui/gallery/widget/menu/ImmersionMenu;
.super Ljava/lang/Object;
.source "ImmersionMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/menu/ImmersionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 1
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 22
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->add(ILjava/lang/CharSequence;I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(ILjava/lang/CharSequence;I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 2
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "pos"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    iget-object v1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 31
    .local v0, "menuItem":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p3, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->size()I

    move-result v3

    .line 64
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 66
    .local v1, "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    invoke-virtual {v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 77
    .end local v1    # "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    :goto_1
    return-object v1

    .line 68
    .restart local v1    # "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getSubMenu()Lcom/miui/gallery/widget/menu/ImmersionSubMenu;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/gallery/widget/menu/ImmersionSubMenu;->findItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    .line 71
    .local v2, "possibleItem":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 72
    goto :goto_1

    .line 64
    .end local v2    # "possibleItem":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
