.class public abstract Lcom/miui/internal/analytics/IAnalytics$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/analytics/IAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/IAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final S:Ljava/lang/String; = "com.miui.internal.analytics.IAnalytics"

.field static final T:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.internal.analytics.IAnalytics"

    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/analytics/IAnalytics$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/analytics/IAnalytics;
    .locals 2

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    const-string v0, "com.miui.internal.analytics.IAnalytics"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/internal/analytics/IAnalytics;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/internal/analytics/IAnalytics;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "com.miui.internal.analytics.IAnalytics"

    .line 39
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v1

    .line 48
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    sget-object p1, Lcom/miui/internal/analytics/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/miui/internal/analytics/Event;

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/IAnalytics$Stub;->track([Lcom/miui/internal/analytics/Event;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v1
.end method
