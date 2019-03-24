.class Lcom/miui/internal/analytics/Event$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/internal/analytics/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;
    .locals 2

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Event;

    .line 108
    invoke-virtual {v0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-object v0

    .line 114
    :catch_0
    move-exception p1

    .line 115
    const-string v0, "AnalyticsEvent"

    const-string v1, "ClassNotFoundException catched when create event from parcel"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 112
    :catch_1
    move-exception p1

    .line 113
    const-string v0, "AnalyticsEvent"

    const-string v1, "IllegalAccessException catched when create event from parcel"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    :catch_2
    move-exception p1

    .line 111
    const-string v0, "AnalyticsEvent"

    const-string v1, "InstantiationException catched when create event from parcel"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_0
    nop

    .line 118
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)[Lcom/miui/internal/analytics/Event;
    .locals 0

    .line 122
    new-array p1, p1, [Lcom/miui/internal/analytics/Event;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->a(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->a(I)[Lcom/miui/internal/analytics/Event;

    move-result-object p1

    return-object p1
.end method
