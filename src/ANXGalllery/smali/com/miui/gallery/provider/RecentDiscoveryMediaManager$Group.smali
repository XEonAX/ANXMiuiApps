.class Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;
.super Ljava/lang/Object;
.source "RecentDiscoveryMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Group"
.end annotation


# instance fields
.field public albumId:J

.field public cursorPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public endDate:J

.field public julianday:I

.field public startDate:J


# direct methods
.method public constructor <init>(JIJI)V
    .locals 3
    .param p1, "dateAdded"    # J
    .param p3, "julianday"    # I
    .param p4, "albumId"    # J
    .param p6, "cursorPos"    # I

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-wide p4, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->albumId:J

    .line 482
    iput-wide p1, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->startDate:J

    .line 483
    iput-wide p1, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->endDate:J

    .line 484
    iput p3, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->julianday:I

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->cursorPosList:Ljava/util/List;

    .line 486
    iget-object v0, p0, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$Group;->cursorPosList:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method
