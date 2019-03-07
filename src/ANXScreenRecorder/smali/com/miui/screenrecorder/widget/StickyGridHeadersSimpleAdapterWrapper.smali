.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersSimpleAdapterWrapper.java"

# interfaces
.implements Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    .line 43
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$1;)V

    invoke-interface {p1, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->generateHeaderList(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    .line 45
    return-void
.end method

.method static synthetic access$102(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;)Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    return-object v0
.end method


# virtual methods
.method protected generateHeaderList(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;)Ljava/util/List;
    .locals 7
    .param p1, "adapter"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v5, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 102
    invoke-interface {p1, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getHeaderId(I)J

    move-result-wide v2

    .line 103
    .local v2, "headerId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    .line 104
    .local v0, "headerData":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    .end local v0    # "headerData":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    invoke-direct {v0, p0, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;I)V

    .line 106
    .restart local v0    # "headerData":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->incrementCount()V

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "headerData":Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    .end local v2    # "headerId":J
    :cond_1
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->getCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->getRefPosition()I

    move-result v0

    invoke-interface {v1, v0, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method
