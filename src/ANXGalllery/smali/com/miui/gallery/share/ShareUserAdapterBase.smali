.class public abstract Lcom/miui/gallery/share/ShareUserAdapterBase;
.super Landroid/widget/BaseAdapter;
.source "ShareUserAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;
    }
.end annotation


# static fields
.field private static sIconEffectHeight:I

.field private static sIconEffectWidth:I

.field private static sIconHeight:I

.field private static sIconWidth:I


# instance fields
.field protected final mCreatorId:Ljava/lang/String;

.field protected mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mItemLayoutId:I

.field protected final mShareUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creatorId"    # Ljava/lang/String;
    .param p3, "itemLayoutId"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mShareUsers:Ljava/util/List;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mCreatorId:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mItemLayoutId:I

    .line 47
    sget v3, Lcom/miui/gallery/share/ShareUserAdapterBase;->sIconWidth:I

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 49
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f020171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sput v3, Lcom/miui/gallery/share/ShareUserAdapterBase;->sIconWidth:I

    .line 51
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sput v3, Lcom/miui/gallery/share/ShareUserAdapterBase;->sIconHeight:I

    .line 53
    const v3, 0x7f02016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, "effect":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sput v3, Lcom/miui/gallery/share/ShareUserAdapterBase;->sIconEffectWidth:I

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sput v3, Lcom/miui/gallery/share/ShareUserAdapterBase;->sIconEffectHeight:I

    .line 57
    .end local v0    # "effect":Landroid/graphics/drawable/Drawable;
    .end local v1    # "mask":Landroid/graphics/drawable/Drawable;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->intialDisplayOptions()V

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract getAbsentSharerIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I
.end method

.method protected abstract getDefaultIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I
.end method

.method protected getDisplayName(Landroid/content/res/Resources;Lcom/miui/gallery/share/UserInfo;Lcom/miui/gallery/share/CloudUserCacheEntry;)Ljava/lang/String;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "user"    # Lcom/miui/gallery/share/UserInfo;
    .param p3, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;

    .prologue
    .line 98
    if-eqz p2, :cond_1

    .line 99
    invoke-virtual {p2}, Lcom/miui/gallery/share/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const v0, 0x7f0c050e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/miui/gallery/share/UserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p3, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract getIconEffect()I
.end method

.method public getItem(I)Lcom/miui/gallery/share/CloudUserCacheEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mShareUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mShareUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/share/CloudUserCacheEntry;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getItem(I)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getItem(I)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v0

    .line 117
    .local v0, "entry":Lcom/miui/gallery/share/CloudUserCacheEntry;
    if-eqz p2, :cond_1

    .line 118
    move-object v4, p2

    .line 124
    .local v4, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;

    .line 126
    .local v3, "vh":Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 127
    invoke-static {}, Lcom/miui/gallery/share/UserInfoCache;->getInstance()Lcom/miui/gallery/share/UserInfoCache;

    move-result-object v5

    iget-object v6, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/share/UserInfoCache;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/share/UserInfo;

    .line 129
    .local v2, "userInfo":Lcom/miui/gallery/share/UserInfo;
    iget-object v5, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v6, v2, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getDisplayName(Landroid/content/res/Resources;Lcom/miui/gallery/share/UserInfo;Lcom/miui/gallery/share/CloudUserCacheEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {v2}, Lcom/miui/gallery/share/UserInfo;->getMiliaoIconUrl150()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "iconUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    iget-object v5, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getDefaultIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    .end local v1    # "iconUrl":Ljava/lang/String;
    :goto_1
    iget-object v5, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mCreatorId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    iget-object v5, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mMark:Landroid/widget/ImageView;

    const v6, 0x7f02008f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    .end local v2    # "userInfo":Lcom/miui/gallery/share/UserInfo;
    :cond_0
    :goto_2
    iget-object v5, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIconEffect:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getIconEffect()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    return-object v4

    .line 120
    .end local v3    # "vh":Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mItemLayoutId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 121
    .restart local v4    # "view":Landroid/view/View;
    new-instance v5, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;

    invoke-direct {v5, p0, v0, v4}, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;-><init>(Lcom/miui/gallery/share/ShareUserAdapterBase;Lcom/miui/gallery/share/CloudUserCacheEntry;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    .restart local v1    # "iconUrl":Ljava/lang/String;
    .restart local v2    # "userInfo":Lcom/miui/gallery/share/UserInfo;
    .restart local v3    # "vh":Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_1

    .line 140
    .end local v1    # "iconUrl":Ljava/lang/String;
    :cond_3
    iget-object v5, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getDefaultIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 146
    .end local v2    # "userInfo":Lcom/miui/gallery/share/UserInfo;
    :cond_4
    iget-object v5, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v6, v8, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getDisplayName(Landroid/content/res/Resources;Lcom/miui/gallery/share/UserInfo;Lcom/miui/gallery/share/CloudUserCacheEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, v3, Lcom/miui/gallery/share/ShareUserAdapterBase$ViewHolder;->mIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getDefaultIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I

    move-result v5

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->getAbsentSharerIcon(Lcom/miui/gallery/share/CloudUserCacheEntry;)I

    move-result v5

    goto :goto_3
.end method

.method protected abstract intialDisplayOptions()V
.end method

.method protected setIconSize(Lcom/miui/gallery/share/CloudUserCacheEntry;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 109
    sget v0, Lcom/miui/gallery/share/ShareUserAdapterBase;->sIconEffectWidth:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    sget v0, Lcom/miui/gallery/share/ShareUserAdapterBase;->sIconEffectHeight:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    return-void
.end method

.method public setShareUsers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "shareUsers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    iget-object v0, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mShareUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/share/ShareUserAdapterBase;->mShareUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareUserAdapterBase;->notifyDataSetChanged()V

    .line 64
    return-void
.end method
