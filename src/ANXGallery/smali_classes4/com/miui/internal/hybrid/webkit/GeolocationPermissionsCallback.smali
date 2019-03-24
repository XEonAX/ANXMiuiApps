.class public Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/GeolocationPermissions$Callback;


# instance fields
.field private gi:Landroid/webkit/GeolocationPermissions$Callback;


# direct methods
.method public constructor <init>(Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;->gi:Landroid/webkit/GeolocationPermissions$Callback;

    .line 15
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/GeolocationPermissionsCallback;->gi:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 20
    return-void
.end method
