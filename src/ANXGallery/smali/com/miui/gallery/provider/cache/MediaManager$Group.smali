.class Lcom/miui/gallery/provider/cache/MediaManager$Group;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Group"
.end annotation


# instance fields
.field count:I

.field itemLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field start:I

.field validLocation:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/cache/MediaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager$1;

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager$Group;-><init>()V

    return-void
.end method
