.class Lmiui/date/Holidays$HolidaysSingleton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/date/Holidays$HolidaysSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 279
    invoke-static {}, Lmiui/date/Holidays;->ck()Lmiui/util/SoftReferenceSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Holidays;

    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/date/Holidays;->a(Lmiui/date/Holidays;Ljava/lang/String;)V

    .line 280
    return-void
.end method
