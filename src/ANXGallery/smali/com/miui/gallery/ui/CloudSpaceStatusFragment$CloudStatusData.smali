.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;
.super Ljava/lang/Object;
.source "CloudSpaceStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudStatusData"
.end annotation


# instance fields
.field mIsSpaceLow:Z

.field mLeftCloudSpace:J

.field mSyncedPhotoCount:I

.field mSyncedPhotoSize:J

.field mSyncedVideoCount:I

.field mSyncedVideoSize:J

.field mTotalCloudSpace:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;-><init>()V

    return-void
.end method
