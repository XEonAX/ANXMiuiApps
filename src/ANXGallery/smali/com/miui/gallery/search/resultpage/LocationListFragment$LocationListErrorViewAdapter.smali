.class Lcom/miui/gallery/search/resultpage/LocationListFragment$LocationListErrorViewAdapter;
.super Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;
.source "LocationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/LocationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListErrorViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/LocationListFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/resultpage/LocationListFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/LocationListFragment$LocationListErrorViewAdapter;->this$0:Lcom/miui/gallery/search/resultpage/LocationListFragment;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;-><init>(Lcom/miui/gallery/search/resultpage/SearchResultFragment;Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getIconResForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    .line 33
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p2, v0, :cond_0

    .line 34
    const v0, 0x7f020108

    .line 38
    :goto_0
    return v0

    .line 35
    :cond_0
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p2, v0, :cond_1

    .line 36
    const v0, 0x7f020254

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInfoTitleForStatus(ILcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)Ljava/lang/String;
    .locals 3
    .param p1, "status"    # I
    .param p2, "position"    # Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .prologue
    const v1, 0x7f0c03d0

    .line 44
    sget-object v2, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    .line 45
    .local v0, "fullScreen":Z
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 62
    if-eqz v0, :cond_4

    .line 64
    .local v1, "resId":I
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/LocationListFragment$LocationListErrorViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 44
    .end local v0    # "fullScreen":Z
    .end local v1    # "resId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    .restart local v0    # "fullScreen":Z
    :sswitch_0
    if-eqz v0, :cond_1

    .line 48
    .restart local v1    # "resId":I
    :goto_2
    goto :goto_1

    .line 47
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f0c0446

    goto :goto_2

    .line 50
    :sswitch_1
    if-eqz v0, :cond_2

    .line 51
    .restart local v1    # "resId":I
    :goto_3
    goto :goto_1

    .line 50
    .end local v1    # "resId":I
    :cond_2
    const v1, 0x7f0c042c

    goto :goto_3

    .line 53
    :sswitch_2
    const v1, 0x7f0c0454

    .line 54
    .restart local v1    # "resId":I
    goto :goto_1

    .line 56
    .end local v1    # "resId":I
    :sswitch_3
    if-eqz v0, :cond_3

    .line 57
    .restart local v1    # "resId":I
    :goto_4
    goto :goto_1

    .line 56
    .end local v1    # "resId":I
    :cond_3
    const v1, 0x7f0c042f

    goto :goto_4

    .line 59
    :sswitch_4
    const v1, 0x7f0c002b

    .line 60
    .restart local v1    # "resId":I
    goto :goto_1

    .line 62
    .end local v1    # "resId":I
    :cond_4
    const v1, 0x7f0c0432

    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_4
    .end sparse-switch
.end method
