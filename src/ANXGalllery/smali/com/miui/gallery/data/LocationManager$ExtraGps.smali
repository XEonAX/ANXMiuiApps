.class Lcom/miui/gallery/data/LocationManager$ExtraGps;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraGps"
.end annotation


# instance fields
.field public delayTime:I

.field public lat:F

.field public lng:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/LocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/data/LocationManager$1;

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/miui/gallery/data/LocationManager$ExtraGps;-><init>()V

    return-void
.end method
