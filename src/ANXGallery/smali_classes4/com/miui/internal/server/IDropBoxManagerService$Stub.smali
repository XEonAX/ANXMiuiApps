.class public abstract Lcom/miui/internal/server/IDropBoxManagerService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/server/IDropBoxManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/IDropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final S:Ljava/lang/String; = "com.miui.internal.server.IDropBoxManagerService"

.field static final it:I = 0x1

.field static final iu:I = 0x2

.field static final iv:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.miui.internal.server.IDropBoxManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/server/IDropBoxManagerService;
    .locals 2

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    const-string v0, "com.miui.internal.server.IDropBoxManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/internal/server/IDropBoxManagerService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/miui/internal/server/IDropBoxManagerService;

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "com.miui.internal.server.IDropBoxManagerService"

    .line 46
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 79
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p1, p3, v2}, Lmiui/os/DropBoxManager$Entry;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 91
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    :goto_0
    return v2

    .line 69
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->isTagEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v2

    .line 55
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    sget-object p1, Lmiui/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/os/DropBoxManager$Entry;

    goto :goto_1

    .line 61
    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->add(Lmiui/os/DropBoxManager$Entry;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v2

    .line 50
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
