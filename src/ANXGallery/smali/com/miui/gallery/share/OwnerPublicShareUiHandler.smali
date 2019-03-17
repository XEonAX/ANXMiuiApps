.class public Lcom/miui/gallery/share/OwnerPublicShareUiHandler;
.super Lcom/miui/gallery/share/PublicShareUiHandler;
.source "OwnerPublicShareUiHandler.java"


# static fields
.field private static CLICK_PUBLIC_INTERNAL:J

.field private static CLICK_PUBLIC_LIMIT:J

.field private static sClickTimes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

.field private mProgressPreference:Lcom/miui/gallery/share/PublishProgressPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->CLICK_PUBLIC_INTERNAL:J

    .line 21
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->CLICK_PUBLIC_LIMIT:J

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0
    .param p1, "activity"    # Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;
    .param p2, "albumName"    # Ljava/lang/String;
    .param p3, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/share/PublicShareUiHandler;-><init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Lcom/miui/gallery/share/PublishProgressPreference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mProgressPreference:Lcom/miui/gallery/share/PublishProgressPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/share/OwnerPublicShareUiHandler;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private canClickPublic()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    .local v0, "now":J
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 121
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    .line 122
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move v2, v3

    .line 145
    :goto_0
    return v2

    .line 126
    :cond_0
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v4, v2

    sget-wide v6, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->CLICK_PUBLIC_LIMIT:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 127
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move v2, v3

    .line 128
    goto :goto_0

    .line 131
    :cond_1
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    sget-wide v6, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->CLICK_PUBLIC_INTERNAL:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 132
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move v2, v3

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    sget-wide v6, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->CLICK_PUBLIC_INTERNAL:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_3

    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    .line 138
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    .line 139
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v4, v2

    sget-wide v6, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->CLICK_PUBLIC_LIMIT:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 140
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :cond_3
    sget-object v2, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->sClickTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    move v2, v3

    .line 145
    goto :goto_0
.end method

.method private tryToChangePublicStatus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 40
    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v2}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v2}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->canClickPublic()Z

    move-result v2

    if-nez v2, :cond_3

    .line 43
    const v2, 0x7f0c0329

    invoke-static {v2}, Lcom/miui/gallery/share/UIHelper;->toast(I)V

    .line 44
    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    :cond_1
    :goto_1
    return-void

    .line 44
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mProgressPreference:Lcom/miui/gallery/share/PublishProgressPreference;

    if-nez v2, :cond_4

    .line 49
    new-instance v2, Lcom/miui/gallery/share/PublishProgressPreference;

    iget-object v3, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    invoke-direct {v2, v3}, Lcom/miui/gallery/share/PublishProgressPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mProgressPreference:Lcom/miui/gallery/share/PublishProgressPreference;

    .line 51
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mProgressPreference:Lcom/miui/gallery/share/PublishProgressPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mProgressPreference:Lcom/miui/gallery/share/PublishProgressPreference;

    iget-object v3, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/miui/gallery/share/PublishProgressPreference;->setProgress(ZZ)V

    .line 54
    new-instance v0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler$1;-><init>(Lcom/miui/gallery/share/OwnerPublicShareUiHandler;)V

    .line 82
    .local v0, "publicListenr":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mAlbumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    .line 83
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 82
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->changePublicStatusAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    goto :goto_1

    .line 85
    .end local v0    # "publicListenr":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mProgressPreference:Lcom/miui/gallery/share/PublishProgressPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v1}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    goto :goto_1
.end method


# virtual methods
.method protected initPreferences()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/miui/gallery/share/PublicShareUiHandler;->initPreferences()V

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    const-string v1, "open_public_share"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    .line 37
    return-void
.end method

.method onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    const-string v1, "open_public_share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->tryToChangePublicStatus()V

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final requestPublicUrl(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->requestPublicUrlForOwnerAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method updateStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mAlbumId:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 99
    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->isPublic()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 100
    invoke-virtual {v1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getPublicUrl()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->updatePublicPreference(ZLjava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->isPublic()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->updatePublicPreference(ZLjava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/share/OwnerPublicShareUiHandler;->mOpenPublicPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
