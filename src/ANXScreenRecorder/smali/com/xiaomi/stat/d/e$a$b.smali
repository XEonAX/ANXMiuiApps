.class final Lcom/xiaomi/stat/d/e$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    .line 818
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 826
    const-string v0, ""

    .line 840
    :goto_0
    return-object v0

    .line 828
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 832
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 834
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 835
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 837
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 844
    iget-object v2, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 860
    :goto_0
    return v1

    .line 847
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 851
    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 852
    if-eqz p1, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget-object v2, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 854
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 855
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 857
    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 858
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move v1, v0

    .line 860
    goto :goto_0

    :cond_1
    move v2, v1

    .line 852
    goto :goto_1

    :cond_2
    move v0, v1

    .line 855
    goto :goto_2

    .line 857
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 858
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    return-object v0
.end method
