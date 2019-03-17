.class public final Lcom/miui/gallery/cloud/SyncOwnerPrivate;
.super Lcom/miui/gallery/cloud/SyncOwnerCloud;
.source "SyncOwnerPrivate.java"


# instance fields
.field private mSyncIgnoreTag:Ljava/lang/String;

.field private mSyncTag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncOwnerCloud;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->mSyncTag:J

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->mSyncIgnoreTag:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected appendParams(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    return-void
.end method

.method protected appendSyncInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "syncIgnoreTag"

    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->mSyncIgnoreTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method protected getCurrentSyncTag()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->getSyncTagList()Ljava/util/ArrayList;

    move-result-object v1

    .line 47
    .local v1, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 49
    .local v0, "syncTagItem":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->mSyncTag:J

    iput-wide v2, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    .line 51
    .end local v0    # "syncTagItem":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :cond_0
    return-object v1
.end method

.method protected getSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$SyncPull;->getPullOwnerPrivateUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateSyncInfo(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "dataJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const-string/jumbo v1, "syncIgnoreTag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "syncIgnoreTag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->mSyncIgnoreTag:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateSyncTag(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget-wide v0, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->serverValue:J

    iput-wide v0, p0, Lcom/miui/gallery/cloud/SyncOwnerPrivate;->mSyncTag:J

    .line 68
    :cond_0
    return-void
.end method
