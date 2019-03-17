.class Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;
.super Ljava/lang/Object;
.source "GeoFencingServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingFence"
.end annotation


# instance fields
.field public mCoordinate:Ljava/lang/String;

.field public mDescribe:Ljava/lang/String;

.field public mExpiration:J

.field public mLatitude:D

.field public mLongitude:D

.field public mPackageName:Ljava/lang/String;

.field public mRadius:F

.field final synthetic this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # F
    .param p7, "expiration"    # J
    .param p9, "packageName"    # Ljava/lang/String;
    .param p10, "describe"    # Ljava/lang/String;
    .param p11, "coordinate"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide p2, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mLatitude:D

    .line 95
    iput-wide p4, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mLongitude:D

    .line 96
    iput p6, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mRadius:F

    .line 97
    iput-wide p7, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mExpiration:J

    .line 98
    iput-object p9, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mPackageName:Ljava/lang/String;

    .line 99
    iput-object p10, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mDescribe:Ljava/lang/String;

    .line 100
    iput-object p11, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$PendingFence;->mCoordinate:Ljava/lang/String;

    .line 101
    return-void
.end method
