.class public Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;
.super Ljava/lang/Object;
.source "SyncBabyInfoFromLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$UpdateBabyInfo;
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mContext:Landroid/content/Context;

.field protected mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

.field private mUpdateBabyInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mUpdateBabyInfoItems:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mAccount:Landroid/accounts/Account;

    .line 44
    iput-object p3, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mUpdateBabyInfoItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 48
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public sync()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 52
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    .line 53
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not( peopleId is null or peopleId = \'\')  AND  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->photoLocalFlag_Synced:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->itemIsGroup:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$1;-><init>(Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;)V

    move-object v4, v3

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mUpdateBabyInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    :try_start_0
    new-instance v6, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$UpdateBabyInfo;

    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v0}, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal$UpdateBabyInfo;-><init>(Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;Landroid/content/Context;)V

    .line 89
    .local v6, "updateGroup":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v0, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v3, p0, Lcom/miui/gallery/cloud/baby/SyncBabyInfoFromLocal;->mUpdateBabyInfoItems:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v6    # "updateGroup":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method
