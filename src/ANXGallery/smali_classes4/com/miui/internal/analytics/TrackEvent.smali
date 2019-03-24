.class public Lcom/miui/internal/analytics/TrackEvent;
.super Lcom/miui/internal/analytics/Event;
.source "SourceFile"


# instance fields
.field private av:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aw:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mPackageName:Ljava/lang/String;

    .line 20
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mType:Ljava/lang/Integer;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->av:Ljava/util/Map;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->aw:J

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/internal/analytics/TrackEvent;->mPackageName:Ljava/lang/String;

    .line 27
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/analytics/TrackEvent;->mType:Ljava/lang/Integer;

    .line 28
    iput-object p2, p0, Lcom/miui/internal/analytics/TrackEvent;->mEventId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/miui/internal/analytics/TrackEvent;->av:Ljava/util/Map;

    .line 30
    iput-wide p4, p0, Lcom/miui/internal/analytics/TrackEvent;->aw:J

    .line 31
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 59
    const-string v0, ""

    .line 61
    if-eqz p1, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "#ITEMSPLITTER#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "#ITEMSPLITTER#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_1
    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->av:Ljava/util/Map;

    .line 79
    const-string v0, "#ITEMSPLITTER#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 80
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/miui/internal/analytics/TrackEvent;->av:Ljava/util/Map;

    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    .line 88
    sget-object v0, Lcom/miui/internal/analytics/TrackEvent;->sDispatcher:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/miui/internal/analytics/TrackEvent;->sDispatcher:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Dispatchable;

    .line 90
    invoke-interface {v1, p0}, Lcom/miui/internal/analytics/Dispatchable;->dispatchEvent(Lcom/miui/internal/analytics/TrackEvent;)V

    .line 91
    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public getParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->av:Ljava/util/Map;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->aw:J

    return-wide v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/analytics/TrackEvent;->c(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->aw:J

    .line 115
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->restore(Landroid/database/Cursor;)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->aw:J

    .line 54
    const-string v0, "param"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/TrackEvent;->c(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public writeEvent(Lcom/miui/internal/analytics/c;)V
    .locals 8

    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/miui/internal/analytics/TrackEvent;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/TrackEvent;->mType:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/miui/internal/analytics/TrackEvent;->mEventId:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->av:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/miui/internal/analytics/TrackEvent;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/miui/internal/analytics/TrackEvent;->mTrackTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/miui/internal/analytics/TrackEvent;->aw:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/analytics/c;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 100
    invoke-super {p0, p1, p2}, Lcom/miui/internal/analytics/Event;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    iget-object p2, p0, Lcom/miui/internal/analytics/TrackEvent;->av:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/miui/internal/analytics/TrackEvent;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->aw:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    return-void
.end method
