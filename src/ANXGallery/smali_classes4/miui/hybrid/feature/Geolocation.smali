.class public Lmiui/hybrid/feature/Geolocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HybridGeolocation"

.field private static final iG:Ljava/lang/String; = "type"

.field private static final zr:Ljava/lang/String; = "enableListener"

.field private static final zs:Ljava/lang/String; = "get"

.field private static final zt:Ljava/lang/String; = "disableListener"


# instance fields
.field private zu:Ljava/lang/String;

.field private zv:Lmiui/hybrid/Callback;

.field private zw:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "network"

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->zu:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;
    .locals 0

    .line 56
    iget-object p0, p0, Lmiui/hybrid/feature/Geolocation;->zv:Lmiui/hybrid/Callback;

    return-object p0
.end method

.method private a(Landroid/location/Location;)Lmiui/hybrid/Response;
    .locals 4

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v0, "HybridGeolocation"

    const-string v1, "response with valid location."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    :goto_0
    new-instance p1, Lmiui/hybrid/Response;

    const/4 v1, 0x3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 150
    :cond_0
    const-string p1, "HybridGeolocation"

    const-string v0, "error: response location with null."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0xc8

    const-string v1, "no location"

    invoke-direct {p1, v0, v1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 7

    .line 109
    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p2

    iput-object p2, p0, Lmiui/hybrid/feature/Geolocation;->zv:Lmiui/hybrid/Callback;

    .line 111
    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->zw:Landroid/location/LocationListener;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 112
    new-instance p2, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;

    invoke-direct {p2, p0, v0}, Lmiui/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V

    iput-object p2, p0, Lmiui/hybrid/feature/Geolocation;->zw:Landroid/location/LocationListener;

    .line 113
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 114
    iget-object v2, p0, Lmiui/hybrid/feature/Geolocation;->zu:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmiui/hybrid/feature/Geolocation;->zw:Landroid/location/LocationListener;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 115
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 118
    :cond_0
    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->zu:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->zv:Lmiui/hybrid/Callback;

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 120
    return-object v0
.end method

.method static synthetic a(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 0

    .line 124
    iget-object p2, p0, Lmiui/hybrid/feature/Geolocation;->zu:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 3

    .line 129
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->zw:Landroid/location/LocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->zw:Landroid/location/LocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    iput-object v1, p0, Lmiui/hybrid/feature/Geolocation;->zw:Landroid/location/LocationListener;

    .line 133
    :cond_0
    iput-object v1, p0, Lmiui/hybrid/feature/Geolocation;->zv:Lmiui/hybrid/Callback;

    .line 134
    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/Response;

    const/4 v0, 0x0

    const-string v2, "remove"

    invoke-direct {p2, v0, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 135
    return-object v1
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 1

    .line 180
    const-string v0, "get"

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1

    .line 183
    :cond_0
    sget-object p1, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object p1
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 4

    .line 93
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "HybridGeolocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 97
    const-string v2, "enableListener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    const-string v2, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->b(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    const-string v2, "disableListener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-direct {p0, v1, p1}, Lmiui/hybrid/feature/Geolocation;->c(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    return-object p1

    .line 104
    :cond_2
    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0xcc

    const-string v1, "no such action"

    invoke-direct {p1, v0, v1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 80
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    const-string p1, "gps"

    iput-object p1, p0, Lmiui/hybrid/feature/Geolocation;->zu:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method
