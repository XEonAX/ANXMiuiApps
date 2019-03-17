.class public Lcom/miui/gallery/ui/DiscoveryBar;
.super Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;
.source "DiscoveryBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDiscoveryMessageClicked:Z

.field private mDiscoveryMessageShown:Z

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/miui/gallery/widget/PanelManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "manager"    # Lcom/miui/gallery/widget/PanelManager;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;-><init>(Landroid/content/Context;ILcom/miui/gallery/widget/PanelManager;)V

    .line 41
    return-void
.end method

.method private autoShowBar()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method private bindImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 2
    .param p1, "imageViewAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 86
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 87
    invoke-virtual {v1, p2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1, p1, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 90
    return-void
.end method

.method private bindView(Ljava/lang/String;[Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "thumbPaths"    # [Ljava/lang/String;
    .param p3, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->ensureView()V

    .line 74
    iget-object v3, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    if-eqz p1, :cond_0

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, p1}, Lcom/miui/gallery/widget/PanelItemLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/PanelItemLayout;->clearDetails()V

    .line 76
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    const v4, 0x7f0400ac

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/PanelItemLayout;->addDetail(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 79
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 80
    .local v2, "imageViewAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;
    aget-object v3, p2, v0

    invoke-direct {p0, v2, v3, p3}, Lcom/miui/gallery/ui/DiscoveryBar;->bindImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "i":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "imageViewAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;
    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 83
    .end local p1    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private ensureView()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/gallery/widget/PanelItemLayout;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/PanelItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/PanelItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method private formatMessageClickTime(J)Ljava/lang/String;
    .locals 7
    .param p1, "msgUpdateTime"    # J

    .prologue
    .line 157
    const-wide/32 v0, 0xea60

    .line 158
    .local v0, "millisPerMinute":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    div-long v2, v4, v0

    .line 159
    .local v2, "minutes":J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 160
    const-string v4, "< 1 minute"

    .line 166
    :goto_0
    return-object v4

    .line 161
    :cond_0
    const-wide/16 v4, 0x3

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 162
    const-string v4, "1-3 minutes"

    goto :goto_0

    .line 163
    :cond_1
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 164
    const-string v4, "4-10 minutes"

    goto :goto_0

    .line 166
    :cond_2
    const-string v4, "> 10 minutes"

    goto :goto_0
.end method

.method private getFirstMessage()Lcom/miui/gallery/model/DiscoveryMessage;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mMessages:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/DiscoveryMessage;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordMessageClickStatus()V
    .locals 3

    .prologue
    .line 114
    iget-boolean v1, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mDiscoveryMessageShown:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "is_message_clicked"

    iget-boolean v2, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mDiscoveryMessageClicked:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "quickly_discovery"

    const-string v2, "quickly_discovery_message_click_status"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private recordMessageClickedTime(Lcom/miui/gallery/model/DiscoveryMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "message_click_time"

    invoke-virtual {p1}, Lcom/miui/gallery/model/DiscoveryMessage;->getUpdateTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/DiscoveryBar;->formatMessageClickTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "quickly_discovery"

    const-string v2, "quickly_discovery_message_click_time"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->ensureView()V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelItem:Lcom/miui/gallery/widget/PanelItemLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PanelItemLayout;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 134
    invoke-direct {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->getFirstMessage()Lcom/miui/gallery/model/DiscoveryMessage;

    move-result-object v3

    .line 135
    .local v3, "message":Lcom/miui/gallery/model/DiscoveryMessage;
    if-nez v3, :cond_0

    .line 154
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "clickIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/miui/gallery/model/DiscoveryMessage;->getActionUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, "dataUri":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/miui/gallery/model/DiscoveryMessage;->getType()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "source"

    const-string v6, "home_page"

    .line 142
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 145
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "clickIntent":Landroid/content/Intent;
    .end local v1    # "dataUri":Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->markAsReadAsync(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;)V

    .line 152
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/DiscoveryBar;->recordMessageClickedTime(Lcom/miui/gallery/model/DiscoveryMessage;)V

    .line 153
    iput-boolean v7, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mDiscoveryMessageClicked:Z

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "DiscoveryBar"

    const-string v5, "Wrong intent action uri: %s"

    invoke-virtual {v3}, Lcom/miui/gallery/model/DiscoveryMessage;->getActionUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->recordMessageClickStatus()V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public setMessage(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/model/DiscoveryMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/DiscoveryMessage;>;"
    const/4 v5, 0x0

    .line 55
    iput-object p1, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mMessages:Ljava/util/List;

    .line 56
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/DiscoveryMessage;

    .line 58
    .local v0, "message":Lcom/miui/gallery/model/DiscoveryMessage;
    invoke-virtual {v0}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "messageText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 60
    .local v3, "thumbPaths":[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageDetail()Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    move-result-object v1

    .line 61
    .local v1, "messageDetail":Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;
    instance-of v4, v1, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    if-eqz v4, :cond_0

    .line 62
    check-cast v1, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;

    .end local v1    # "messageDetail":Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;
    invoke-virtual {v1}, Lcom/miui/gallery/discovery/RecentDiscoveryMessageOperator$RecentMessageDetail;->getThumbUrls()[Ljava/lang/String;

    move-result-object v3

    .line 64
    :cond_0
    sget-object v4, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gallery/ui/DiscoveryBar;->bindView(Ljava/lang/String;[Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelManager:Lcom/miui/gallery/widget/PanelManager;

    invoke-direct {p0}, Lcom/miui/gallery/ui/DiscoveryBar;->autoShowBar()Z

    move-result v5

    invoke-interface {v4, p0, v5}, Lcom/miui/gallery/widget/PanelManager;->addItem(Lcom/miui/gallery/widget/PanelItem;Z)Z

    .line 66
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mDiscoveryMessageShown:Z

    .line 70
    .end local v0    # "message":Lcom/miui/gallery/model/DiscoveryMessage;
    .end local v2    # "messageText":Ljava/lang/String;
    .end local v3    # "thumbPaths":[Ljava/lang/String;
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/ui/DiscoveryBar;->mPanelManager:Lcom/miui/gallery/widget/PanelManager;

    invoke-interface {v4, p0, v5}, Lcom/miui/gallery/widget/PanelManager;->removeItem(Lcom/miui/gallery/widget/PanelItem;Z)Z

    goto :goto_0
.end method
