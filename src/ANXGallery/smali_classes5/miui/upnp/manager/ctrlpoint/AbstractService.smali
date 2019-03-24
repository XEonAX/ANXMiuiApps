.class public abstract Lmiui/upnp/manager/ctrlpoint/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"


# instance fields
.field protected service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method public constructor <init>(Lmiui/upnp/typedef/device/Service;)V
    .locals 0
    .param p1, "service"    # Lmiui/upnp/typedef/device/Service;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmiui/upnp/manager/ctrlpoint/AbstractService;->service:Lmiui/upnp/typedef/device/Service;

    .line 11
    return-void
.end method
