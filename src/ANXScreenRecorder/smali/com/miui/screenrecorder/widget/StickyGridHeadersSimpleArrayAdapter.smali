.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersSimpleArrayAdapter.java"

# interfaces
.implements Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mHeaderResId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemResId:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "headerResId"    # I
    .param p4, "itemResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->init(Landroid/content/Context;Ljava/util/List;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "headerResId"    # I
    .param p4, "itemResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;II)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->init(Landroid/content/Context;Ljava/util/List;II)V

    .line 53
    return-void
.end method

.method private init(Landroid/content/Context;Ljava/util/List;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "headerResId"    # I
    .param p4, "itemResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mItems:Ljava/util/List;

    .line 140
    iput p3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mHeaderResId:I

    .line 141
    iput p4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mItemResId:I

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 143
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "item":Ljava/lang/Object;, "TT;"
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 70
    check-cast v1, Ljava/lang/CharSequence;

    .line 75
    .local v1, "value":Ljava/lang/CharSequence;
    :goto_0
    const/4 v2, 0x1

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    return-wide v2

    .line 72
    .end local v1    # "value":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    const/4 v5, 0x0

    .line 82
    if-nez p2, :cond_0

    .line 83
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mHeaderResId:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;)V

    .line 85
    .local v0, "holder":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.HeaderViewHolder;"
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;->textView:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "item":Ljava/lang/Object;, "TT;"
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 94
    check-cast v2, Ljava/lang/CharSequence;

    .line 100
    .local v2, "string":Ljava/lang/CharSequence;
    :goto_1
    iget-object v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;->textView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-interface {v2, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-object p2

    .line 88
    .end local v0    # "holder":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.HeaderViewHolder;"
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "string":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;

    .restart local v0    # "holder":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.HeaderViewHolder;"
    goto :goto_0

    .line 96
    .restart local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "string":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    .local p0, "this":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->mItemResId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 121
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;)V

    .line 122
    .local v0, "holder":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.ViewHolder;"
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "item":Ljava/lang/Object;, "TT;"
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_1
    return-object p2

    .line 125
    .end local v0    # "holder":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.ViewHolder;"
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;, "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter<TT;>.ViewHolder;"
    goto :goto_0

    .line 132
    .restart local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
