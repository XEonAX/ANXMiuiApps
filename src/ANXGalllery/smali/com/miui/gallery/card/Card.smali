.class public Lcom/miui/gallery/card/Card;
.super Lcom/miui/gallery/dao/base/Entity;
.source "Card.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/Card$CardExtraInfo;,
        Lcom/miui/gallery/card/Card$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/dao/base/Entity;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/card/Card;",
        ">;"
    }
.end annotation


# static fields
.field public static final BASE_UI_CARD_SELECTION:Ljava/lang/String;

.field public static final BASE_UNSYNC_CARD_SELECTION:Ljava/lang/String;


# instance fields
.field private mActionUrl:Ljava/lang/String;

.field private mAllMediaSha1s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseColor:I

.field private mCoverMediaFeatureItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateBy:I

.field private mCreateTime:J

.field private mDescription:Ljava/lang/String;

.field private mDetailUrl:Ljava/lang/String;

.field private mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageResId:I

.field private mImageUri:Landroid/net/Uri;

.field private mIsDeletable:Z

.field private mIsIgnored:Z

.field private mIsSyncable:Z

.field private mIsTop:Z

.field private mLocalFlag:I

.field private mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

.field private mScenarioId:I

.field private mSelectedMediaSha1s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServerId:Ljava/lang/String;

.field private mServerTag:J

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

.field private mUpdateTime:J

.field private mValidEndTime:J

.field private mValidStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignored = 0 AND localFlag NOT IN (1,-2,-1,4) AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s > %s AND %s < %s"

    new-array v2, v10, [Ljava/lang/Object;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const-string/jumbo v3, "validStart"

    aput-object v3, v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "validEnd"

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/card/Card;->BASE_UI_CARD_SELECTION:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignored = 0 AND syncable = 1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s = %s OR %s = %s OR %s = %s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "localFlag"

    aput-object v3, v2, v7

    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "localFlag"

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "localFlag"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/card/Card;->BASE_UNSYNC_CARD_SELECTION:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/Card$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/Card$1;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/card/Card;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/miui/gallery/card/Card;->decodeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/miui/gallery/card/Card;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    return p1
.end method

.method static synthetic access$1502(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/gallery/card/Card;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/miui/gallery/card/Card;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    return p1
.end method

.method static synthetic access$1802(Lcom/miui/gallery/card/Card;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/miui/gallery/card/Card;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/miui/gallery/card/Card;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    return p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/gallery/card/Card;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card;->mIsSyncable:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/miui/gallery/card/Card;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mValidStartTime:J

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/miui/gallery/card/Card;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mValidEndTime:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/miui/gallery/card/Card;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card;->mIsTop:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/miui/gallery/card/Card;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/card/Card;->mType:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/card/Card;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card;->mIsDeletable:Z

    return p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/card/Card;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;)Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mActionUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/gallery/card/Card;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/Card;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    return-object p1
.end method

.method public static convertResIdToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "entry":Ljava/lang/String;
    const-string v2, "%s://%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static convertUriToResId(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 893
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private static decodeUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 882
    if-nez p0, :cond_0

    .line 883
    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapToString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 901
    if-nez p0, :cond_0

    .line 909
    :goto_0
    return-object v1

    .line 905
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Card"

    const-string v3, "mapToString occur error.\n"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private parseStyles(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {p1}, Lcom/miui/gallery/card/Card;->stringToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 600
    .local v0, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 603
    :cond_0
    const-string v1, "baseColor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/card/Card;->stringToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    goto :goto_0
.end method

.method private putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method

.method private setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 595
    iput p1, p0, Lcom/miui/gallery/card/Card;->mType:I

    .line 596
    return-void
.end method

.method private static stringToInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 930
    if-nez p0, :cond_0

    .line 938
    :goto_0
    return v1

    .line 934
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Card"

    const-string/jumbo v3, "stringToInt occur error.\n"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static stringToMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 915
    if-nez p0, :cond_0

    move-object v2, v3

    .line 925
    :goto_0
    return-object v2

    .line 919
    :cond_0
    :try_start_0
    new-instance v2, Lcom/miui/gallery/card/Card$1;

    invoke-direct {v2}, Lcom/miui/gallery/card/Card$1;-><init>()V

    .line 920
    invoke-virtual {v2}, Lcom/miui/gallery/card/Card$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 921
    .local v1, "mapType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Card"

    const-string/jumbo v4, "stringToMap occur error.\n"

    invoke-static {v2, v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v3

    .line 925
    goto :goto_0
.end method

.method private wrapStyles()Ljava/lang/String;
    .locals 3

    .prologue
    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 609
    .local v0, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "baseColor"

    iget v2, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-static {v0}, Lcom/miui/gallery/card/Card;->mapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/card/Card;)I
    .locals 6
    .param p1, "o"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 627
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card;->mIsTop:Z

    iget-boolean v2, p1, Lcom/miui/gallery/card/Card;->mIsTop:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    neg-int v0, v1

    .line 628
    .local v0, "topCompare":I
    if-nez v0, :cond_0

    .line 629
    iget-wide v2, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    iget-wide v4, p1, Lcom/miui/gallery/card/Card;->mCreateTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    neg-int v0, v1

    .line 631
    .end local v0    # "topCompare":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/miui/gallery/card/Card;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/Card;->compareTo(Lcom/miui/gallery/card/Card;)I

    move-result v0

    return v0
.end method

.method declared-synchronized copyFrom(Lcom/miui/gallery/card/Card;)V
    .locals 2
    .param p1, "srcCard"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 515
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 516
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mActionUrl:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getDetailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    .line 521
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    .line 522
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isDeletable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsDeletable:Z

    .line 523
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getType()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mType:I

    .line 524
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 525
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getOperationInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    .line 526
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    .line 527
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    .line 528
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCoverMediaFeatureItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    .line 529
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/card/Card;->getImageResId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    .line 530
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getBaseColor()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    .line 532
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 533
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    .line 534
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerTag()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    .line 535
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    .line 536
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    .line 537
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getCreateBy()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    .line 538
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isIgnored()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    .line 539
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isSyncable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsSyncable:Z

    .line 540
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getValidStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mValidStartTime:J

    .line 541
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getValidEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card;->mValidEndTime:J

    .line 542
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isTop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsTop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_0
    monitor-exit p0

    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 636
    if-ne p0, p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v1

    .line 637
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/card/Card;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 639
    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 641
    .local v0, "card":Lcom/miui/gallery/card/Card;
    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mId:J

    iget-wide v6, v0, Lcom/miui/gallery/card/Card;->mId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public generateDuplicateKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mActionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getAllMediaSha1s()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBaseColor()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/miui/gallery/card/Card;->mBaseColor:I

    return v0
.end method

.method public getCardExtraInfo()Lcom/miui/gallery/card/Card$CardExtraInfo;
    .locals 3

    .prologue
    .line 381
    new-instance v0, Lcom/miui/gallery/card/Card$CardExtraInfo;

    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    iget-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/card/Card$CardExtraInfo;-><init>(Lcom/miui/gallery/card/scenario/Record$UniqueKey;Z)V

    return-object v0
.end method

.method public getCoverMediaFeatureItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getCreateBy()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResId(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 229
    :cond_0
    iget v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/miui/gallery/card/Card;->convertUriToResId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    .line 232
    :cond_1
    iget v0, p0, Lcom/miui/gallery/card/Card;->mImageResId:I

    goto :goto_0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalFlag()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    return v0
.end method

.method public getOperationInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    return-object v0
.end method

.method public getRecordStartTime()J
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getStartTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getRecordTargetTime()J
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getTargetTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getScenarioId()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    return v0
.end method

.method public declared-synchronized getSelectedMediaSha1s()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTag()J
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    return-wide v0
.end method

.method protected getTableColumns()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string v1, "cardId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "title"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "description"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "actionText"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "actionUrl"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "detailUrl"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "imageUri"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v1, "createTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "deletable"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v1, "type"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v1, "styles"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v1, "extras"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "scenarioId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "serverId"

    const-string v2, "TEXT"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "serverTag"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "localFlag"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "updateTime"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "createdBy"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "ignored"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v1, "syncable"

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string/jumbo v1, "validStart"

    const-string v2, "INTEGER"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v1, "validEnd"

    const-string v2, "INTEGER"

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "isTop"

    const-string v2, "INTEGER"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/card/Card;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/miui/gallery/card/Card;->mType:I

    return v0
.end method

.method protected getUniqueConstraints()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 548
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUniqueKey()Lcom/miui/gallery/card/scenario/Record$UniqueKey;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    return-wide v0
.end method

.method public getValidEndTime()J
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mValidEndTime:J

    return-wide v0
.end method

.method public getValidStartTime()J
    .locals 2

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mValidStartTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 646
    iget-wide v0, p0, Lcom/miui/gallery/card/Card;->mId:J

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized isCoversNeedRefresh()Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 572
    iget-object v5, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 573
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 574
    .local v0, "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 575
    .local v1, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 571
    .end local v0    # "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 579
    .restart local v0    # "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 580
    .local v2, "mediaSha1":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 581
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    .end local v2    # "mediaSha1":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    .line 585
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v7, :cond_5

    iget-object v5, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lt v5, v7, :cond_5

    :cond_4
    move v3, v4

    .line 591
    .end local v0    # "coverImageSha1Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    monitor-exit p0

    return v3

    :cond_6
    move v3, v4

    .line 588
    goto :goto_2
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsDeletable:Z

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/card/Card;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isIgnored()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    return v0
.end method

.method public isLocalDeleted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 614
    iget v1, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutofDate()Z
    .locals 4

    .prologue
    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 399
    .local v0, "now":J
    iget-wide v2, p0, Lcom/miui/gallery/card/Card;->mValidStartTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/miui/gallery/card/Card;->mValidEndTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsSyncable:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsTop:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onConvertToContents(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 478
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "description"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "actionText"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 481
    const-string v2, "actionUrl"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mActionUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v2, "detailUrl"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 484
    const-string v2, "imageUri"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 488
    :goto_0
    const-string v2, "createTime"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    const-string v3, "deletable"

    iget-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsDeletable:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lcom/miui/gallery/card/Card;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string/jumbo v2, "styles"

    invoke-direct {p0}, Lcom/miui/gallery/card/Card;->wrapStyles()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v2, "unique_key"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v2, "operation_info"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v2, "all_images"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v2, "selected_images"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v2, "covers"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/card/Card;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, "extras"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/miui/gallery/card/Card;->mapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "scenarioId"

    iget v3, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v2, "serverId"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "serverTag"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    const-string v2, "localFlag"

    iget v3, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string/jumbo v2, "updateTime"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    const-string v2, "createdBy"

    iget v3, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const-string v3, "ignored"

    iget-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string/jumbo v3, "syncable"

    iget-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsSyncable:Z

    if-eqz v2, :cond_3

    move v2, v0

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const-string/jumbo v2, "validStart"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mValidStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    const-string/jumbo v2, "validEnd"

    iget-wide v4, p0, Lcom/miui/gallery/card/Card;->mValidEndTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 511
    const-string v2, "isTop"

    iget-boolean v3, p0, Lcom/miui/gallery/card/Card;->mIsTop:Z

    if-eqz v3, :cond_4

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 486
    :cond_0
    :try_start_1
    const-string v2, "imageUri"

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v2, v1

    .line 489
    goto/16 :goto_1

    :cond_2
    move v2, v1

    .line 506
    goto :goto_2

    :cond_3
    move v2, v1

    .line 507
    goto :goto_3

    :cond_4
    move v0, v1

    .line 511
    goto :goto_4
.end method

.method protected onInitFromCursor(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 435
    const-string/jumbo v2, "title"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    .line 436
    const-string v2, "description"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    .line 437
    const-string v2, "detailUrl"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mDetailUrl:Ljava/lang/String;

    .line 438
    const-string v2, "actionUrl"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mActionUrl:Ljava/lang/String;

    .line 439
    const-string v2, "imageUri"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "imageUri":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 441
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mImageUri:Landroid/net/Uri;

    .line 443
    :cond_0
    const-string v2, "createTime"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    .line 444
    const-string v2, "deletable"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsDeletable:Z

    .line 445
    const-string/jumbo v2, "type"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->setType(I)V

    .line 446
    const-string/jumbo v2, "styles"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->parseStyles(Ljava/lang/String;)V

    .line 447
    const-string v2, "extras"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/card/Card;->stringToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mExtras:Ljava/util/HashMap;

    .line 449
    const-string/jumbo v2, "unique_key"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 450
    const-string v2, "operation_info"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    .line 452
    :try_start_0
    const-string v2, "all_images"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    .line 453
    const-string v2, "selected_images"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    .line 454
    const-string v2, "covers"

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/Card;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-static {v2, v5}, Lcom/miui/gallery/util/GsonUtils;->getArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    const-string v2, "scenarioId"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 460
    iget v2, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    if-gtz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-virtual {v2}, Lcom/miui/gallery/card/scenario/Record$UniqueKey;->getScenarioId()I

    move-result v2

    :goto_2
    iput v2, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 463
    :cond_1
    const-string v2, "serverId"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    .line 464
    const-string v2, "serverTag"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    .line 465
    const-string v2, "localFlag"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    .line 466
    const-string/jumbo v2, "updateTime"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    .line 467
    const-string v2, "createdBy"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    .line 468
    const-string v2, "ignored"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    .line 469
    const-string/jumbo v2, "syncable"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/miui/gallery/card/Card;->mIsSyncable:Z

    .line 470
    const-string/jumbo v2, "validStart"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mValidStartTime:J

    .line 471
    const-string/jumbo v2, "validEnd"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/card/Card;->mValidEndTime:J

    .line 472
    const-string v2, "isTop"

    invoke-static {p1, v2}, Lcom/miui/gallery/card/Card;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_6

    :goto_5
    iput-boolean v3, p0, Lcom/miui/gallery/card/Card;->mIsTop:Z

    .line 474
    return-void

    :cond_2
    move v2, v4

    .line 444
    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Card"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create card from cursor error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    move v2, v4

    .line 461
    goto :goto_2

    :cond_4
    move v2, v4

    .line 468
    goto :goto_3

    :cond_5
    move v2, v4

    .line 469
    goto :goto_4

    :cond_6
    move v3, v4

    .line 472
    goto :goto_5
.end method

.method public declared-synchronized removeImages(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "imageSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 651
    .local v1, "removeCount":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 653
    .local v0, "deleteSha1":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    add-int/lit8 v1, v1, 0x1

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    iget-object v3, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 650
    .end local v0    # "deleteSha1":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 661
    :cond_2
    if-lez v1, :cond_3

    .line 662
    :try_start_1
    const-string v2, "Card"

    const-string v3, "Delete %d images from Card %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v6, p0, Lcom/miui/gallery/card/Card;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    :cond_3
    if-lez v1, :cond_4

    const/4 v2, 0x1

    :goto_1
    monitor-exit p0

    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized setAllMediaSha1s(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "allMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mAllMediaSha1s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_1
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCardExtraInfo(Lcom/miui/gallery/card/Card$CardExtraInfo;)V
    .locals 1
    .param p1, "cardExtraInfo"    # Lcom/miui/gallery/card/Card$CardExtraInfo;

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    iget-object v0, p1, Lcom/miui/gallery/card/Card$CardExtraInfo;->uniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 387
    iget-boolean v0, p1, Lcom/miui/gallery/card/Card$CardExtraInfo;->isIgnored:Z

    iput-boolean v0, p0, Lcom/miui/gallery/card/Card;->mIsIgnored:Z

    .line 389
    :cond_0
    return-void
.end method

.method public declared-synchronized setCoverMediaFeatureItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "coverMediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/card/Card;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCreateBy(I)V
    .locals 0
    .param p1, "createBy"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/miui/gallery/card/Card;->mCreateBy:I

    .line 358
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mCreateTime:J

    .line 176
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mDescription:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setLocalFlag(I)V
    .locals 0
    .param p1, "localFlag"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/miui/gallery/card/Card;->mLocalFlag:I

    .line 342
    return-void
.end method

.method public setScenarioId(I)V
    .locals 0
    .param p1, "scenarioId"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/miui/gallery/card/Card;->mScenarioId:I

    .line 318
    return-void
.end method

.method public declared-synchronized setSelectedMediaSha1s(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 286
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/miui/gallery/card/Card;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :goto_0
    monitor-exit p0

    return-void

    .line 289
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 290
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "from"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v1, "assistant"

    const-string v2, "assistant_card_remove_all_image"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    const-string v1, "Card"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mServerId:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setServerTag(J)V
    .locals 1
    .param p1, "serverTag"    # J

    .prologue
    .line 333
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mServerTag:J

    .line 334
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/gallery/card/Card;->mTitle:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1
    .param p1, "updateTime"    # J

    .prologue
    .line 349
    iput-wide p1, p0, Lcom/miui/gallery/card/Card;->mUpdateTime:J

    .line 350
    return-void
.end method
