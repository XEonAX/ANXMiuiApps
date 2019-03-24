.class Lmiui/date/DateUtils$1;
.super Lmiui/util/Pools$Manager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/date/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager<",
        "Lmiui/date/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public cj()Lmiui/date/Calendar;
    .locals 1

    .line 210
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    return-object v0
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lmiui/date/DateUtils$1;->cj()Lmiui/date/Calendar;

    move-result-object v0

    return-object v0
.end method
