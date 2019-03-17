.class Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;
.super Ljava/lang/Object;
.source "SaveToCloudUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/SaveToCloudUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudEntry"
.end annotation


# instance fields
.field mID:J

.field mLocalFlag:I

.field mLocalPath:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mServerId:Ljava/lang/String;

.field mServerStatus:Ljava/lang/String;

.field mSha1:Ljava/lang/String;

.field mSize:J

.field mThumbnailPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/scanner/SaveToCloudUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$1;

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->hasSynced()Z

    move-result v0

    return v0
.end method

.method private hasSynced()Z
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mLocalFlag:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$CloudEntry;->mServerStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
