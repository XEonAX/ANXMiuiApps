.class Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;
.super Ljava/lang/Object;
.source "SaveToCloudUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/SaveToCloudUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToCloud"
.end annotation


# instance fields
.field mIsExifSha1:Z

.field mLastModify:J

.field mMimeType:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mPath:Ljava/lang/String;

.field mSha1:Ljava/lang/String;

.field mSize:J

.field mTitle:Ljava/lang/String;

.field mUbiEntry:Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/scanner/SaveToCloudUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$1;

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveToCloud;-><init>()V

    return-void
.end method
