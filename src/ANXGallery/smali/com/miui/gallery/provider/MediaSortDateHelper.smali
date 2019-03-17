.class public Lcom/miui/gallery/provider/MediaSortDateHelper;
.super Ljava/lang/Object;
.source "MediaSortDateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;,
        Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;,
        Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;
    }
.end annotation


# static fields
.field private static sSortDateProvider:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper;->sSortDateProvider:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private static createSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;

    invoke-direct {v0}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;-><init>()V

    return-object v0
.end method

.method public static getSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper;->sSortDateProvider:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/miui/gallery/provider/MediaSortDateHelper;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper;->sSortDateProvider:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper;->createSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper;->sSortDateProvider:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper;->sSortDateProvider:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
