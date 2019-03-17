.class Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback$Stub$a;
.super Ljava/lang/Object;
.source "INexAssetDataCallback.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback$Stub$a;->a:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onLoadAssetDatas(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 83
    :try_start_0
    const-string v0, "com.nexstreaming.nexeditorsdk.service.INexAssetDataCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/service/INexAssetDataCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    return-void

    .line 89
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
