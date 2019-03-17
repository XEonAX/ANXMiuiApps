.class public Lcom/miui/gallery/stat/StatSampling;
.super Ljava/lang/Object;
.source "StatSampling.java"


# static fields
.field public static final FILTERED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$SampleStatistic;->getUniqId()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gallery/stat/StatSampling;->FILTERED:Z

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
