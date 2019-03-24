.class Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hybrid/feature/Geolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic zx:Lmiui/hybrid/feature/Geolocation;


# direct methods
.method private constructor <init>(Lmiui/hybrid/feature/Geolocation;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->zx:Lmiui/hybrid/feature/Geolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiui/hybrid/feature/Geolocation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->zx:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->a(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->zx:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiui/hybrid/feature/Geolocation;->a(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;

    move-result-object v0

    iget-object v1, p0, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;->zx:Lmiui/hybrid/feature/Geolocation;

    invoke-static {v1, p1}, Lmiui/hybrid/feature/Geolocation;->a(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 166
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 170
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 174
    return-void
.end method
