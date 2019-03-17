.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

.field private final mInner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1518
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;

    invoke-direct {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "inner"    # Ljava/lang/Object;

    .prologue
    .line 1412
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    .line 1413
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V
    .locals 0
    .param p1, "inner"    # Ljava/lang/Object;
    .param p2, "extraBinder"    # Landroid/support/v4/media/session/IMediaSession;

    .prologue
    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    .line 1417
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1418
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1458
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1480
    if-ne p0, p1, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return v1

    .line 1483
    :cond_1
    instance-of v3, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v3, :cond_2

    move v1, v2

    .line 1484
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1487
    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1488
    .local v0, "other":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 1489
    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 1491
    :cond_3
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v1, :cond_4

    move v1, v2

    .line 1492
    goto :goto_0

    .line 1494
    :cond_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    iget-object v2, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1473
    const/4 v0, 0x0

    .line 1475
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1464
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1468
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0
.end method
