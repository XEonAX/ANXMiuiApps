.class public abstract Lcom/miui/gallery/share/PublicShareUiHandler;
.super Ljava/lang/Object;
.source "PublicShareUiHandler.java"


# instance fields
.field protected mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

.field protected mAlbumId:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field protected mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

.field protected mFuturePublic:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field protected mPublicPreference:Landroid/preference/PreferenceCategory;

.field private mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

.field private mSendPublicUrlPreference:Landroid/preference/PreferenceScreen;

.field protected mSharersPreference:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 1
    .param p1, "activity"    # Lcom/miui/gallery/share/ShareAlbumBaseActivity;
    .param p2, "albumName"    # Ljava/lang/String;
    .param p3, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/miui/gallery/share/PublicShareUiHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/PublicShareUiHandler$1;-><init>(Lcom/miui/gallery/share/PublicShareUiHandler;)V

    iput-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    .line 57
    iput-object p2, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mAlbumName:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/share/PublicShareUiHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/share/PublicShareUiHandler;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/PublicShareUiHandler;->updateProgressBarDirectly(I)V

    return-void
.end method

.method private sendPublicPreference(Ljava/lang/String;)V
    .locals 7
    .param p1, "publicUrl"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v6, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSendPublicUrlPreference:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getInstance()Lcom/miui/gallery/share/PhoneShareAlbumProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mAlbumName:Ljava/lang/String;

    const-string v3, ""

    const/4 v5, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/share/PhoneShareAlbumProvider;->getShareUrlIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSendPublicUrlPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 121
    return-void
.end method

.method private updateProgressBarDirectly(I)V
    .locals 2
    .param p1, "newStatus"    # I

    .prologue
    .line 152
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSharersPreference:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0c028d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setSummary(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSharersPreference:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method initPreferences()V
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    const-string/jumbo v1, "sharers"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSharersPreference:Landroid/preference/PreferenceCategory;

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSharersPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    const v2, 0x7f0c003a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    const-string v1, "public_share"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    const-string v1, "send_public_url"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSendPublicUrlPreference:Landroid/preference/PreferenceScreen;

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 127
    :cond_0
    return-void
.end method

.method protected abstract requestPublicUrl(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
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
.end method

.method updateProgressBar(I)V
    .locals 4
    .param p1, "newStatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    if-eq p1, v3, :cond_0

    .line 144
    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/PublicShareUiHandler;->updateProgressBarDirectly(I)V

    goto :goto_0
.end method

.method protected updatePublicPreference(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isPublic"    # Z
    .param p2, "publicUrl"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p1, :cond_4

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSendPublicUrlPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, p2}, Lcom/miui/gallery/share/PublicShareUiHandler;->sendPublicPreference(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/miui/gallery/share/DescriptPreference;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/share/DescriptPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    const-string v1, "public_url_descript"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/DescriptPreference;->setKey(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    const v1, 0x7f0c03e4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/DescriptPreference;->setDescriptTitle(I)V

    .line 84
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/share/DescriptPreference;->setDescriptDetail(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/DescriptPreference;->setDescriptDetailVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    new-instance v1, Lcom/miui/gallery/share/PublicShareUiHandler$2;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/share/PublicShareUiHandler$2;-><init>(Lcom/miui/gallery/share/PublicShareUiHandler;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/DescriptPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    const-string v1, "public_url_descript"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 116
    :cond_3
    :goto_0
    return-void

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSendPublicUrlPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSendPublicUrlPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mPublicUrlDescriptPreference:Lcom/miui/gallery/share/DescriptPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method updateSharers(I)V
    .locals 7
    .param p1, "sharerCount"    # I

    .prologue
    const v6, 0x7f0c003a

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    if-lez p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSharersPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mSharersPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gallery/share/PublicShareUiHandler;->mActivity:Lcom/miui/gallery/share/ShareAlbumBaseActivity;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
