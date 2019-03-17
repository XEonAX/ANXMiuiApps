.class Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;
.super Ljava/lang/Object;
.source "TwoStageDrawer.java"

# interfaces
.implements Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/TwoStageDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterViewWrapper"
.end annotation


# instance fields
.field private mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1117
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;->mAdapterView:Landroid/widget/AdapterView;

    .line 1119
    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1123
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 1124
    .local v2, "firstVisiblePosition":I
    if-lez v2, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v5

    .line 1132
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v4

    .line 1133
    .local v4, "paddingTop":I
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    .line 1134
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1135
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1136
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v6, v4, :cond_0

    .line 1134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1144
    .end local v0    # "c":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
