.class Lcom/miui/gallery/data/LocationManager$CacheItem;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheItem"
.end annotation


# instance fields
.field public address:Landroid/location/Address;

.field public distance:I

.field public lat:D

.field public lng:D

.field public locale:Ljava/util/Locale;

.field final synthetic this$0:Lcom/miui/gallery/data/LocationManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/data/LocationManager;)V
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/miui/gallery/data/LocationManager$CacheItem;->this$0:Lcom/miui/gallery/data/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/data/LocationManager;
    .param p2, "x1"    # Lcom/miui/gallery/data/LocationManager$1;

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/LocationManager$CacheItem;-><init>(Lcom/miui/gallery/data/LocationManager;)V

    return-void
.end method
