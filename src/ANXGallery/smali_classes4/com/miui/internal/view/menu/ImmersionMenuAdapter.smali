.class public Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private nt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->nt:Ljava/util/ArrayList;

    .line 27
    iget-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->nt:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->a(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 28
    return-void
.end method

.method private a(Landroid/view/Menu;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 32
    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 34
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 35
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 36
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->nt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->nt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 60
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/internal/R$layout;->immersion_popup_menu_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuAdapter$1;)V

    .line 63
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->nu:Landroid/widget/ImageView;

    .line 64
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->nv:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .line 68
    if-eqz p3, :cond_2

    .line 69
    check-cast p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->nu:Landroid/widget/ImageView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v1, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->nu:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->nu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object p3, p3, Lcom/miui/internal/view/menu/ImmersionMenuAdapter$ViewHolder;->nv:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    return-object p2
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->nt:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->a(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
