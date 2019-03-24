.class public abstract Lcom/miui/internal/analytics/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SPLITTER:Ljava/lang/String; = "#ITEMSPLITTER#"

.field private static final TAG:Ljava/lang/String; = "AnalyticsEvent"

.field protected static sDispatcher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Dispatchable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mEventId:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mPolicy:Ljava/lang/String;

.field protected mTrackTime:J

.field protected mType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/miui/internal/analytics/Event$1;

    invoke-direct {v0}, Lcom/miui/internal/analytics/Event$1;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/analytics/Event;->setTime(J)V

    .line 28
    return-void
.end method

.method public static setDispatcher(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Dispatchable;",
            ">;)V"
        }
    .end annotation

    .line 31
    sput-object p0, Lcom/miui/internal/analytics/Event;->sDispatcher:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public abstract dispatch()V
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTime()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    return-wide v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    .line 100
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v0, "package"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    .line 68
    const-string v0, "event_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    .line 69
    const-string v0, "time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    .line 71
    :cond_0
    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    .line 36
    return-void
.end method

.method public abstract writeEvent(Lcom/miui/internal/analytics/c;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    return-void
.end method
