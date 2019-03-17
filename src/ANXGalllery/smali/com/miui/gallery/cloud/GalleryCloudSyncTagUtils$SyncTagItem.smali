.class public Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
.super Ljava/lang/Object;
.source "GalleryCloudSyncTagUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncTagItem"
.end annotation


# instance fields
.field public currentValue:J

.field public serverValue:J

.field public shouldSync:Z

.field public final syncTagType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "syncTagType"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->shouldSync:Z

    .line 99
    return-void
.end method
