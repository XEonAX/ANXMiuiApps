.class Lmiui/widget/PictureClock$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XK:Lmiui/widget/PictureClock;


# direct methods
.method constructor <init>(Lmiui/widget/PictureClock;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmiui/widget/PictureClock$1;->XK:Lmiui/widget/PictureClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lmiui/widget/PictureClock$1;->XK:Lmiui/widget/PictureClock;

    invoke-static {p1}, Lmiui/widget/PictureClock;->a(Lmiui/widget/PictureClock;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    const-string p1, "time-zone"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lmiui/widget/PictureClock$1;->XK:Lmiui/widget/PictureClock;

    new-instance v0, Lmiui/date/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-direct {v0, p1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    invoke-static {p2, v0}, Lmiui/widget/PictureClock;->a(Lmiui/widget/PictureClock;Lmiui/date/Calendar;)Lmiui/date/Calendar;

    .line 45
    :cond_0
    iget-object p1, p0, Lmiui/widget/PictureClock$1;->XK:Lmiui/widget/PictureClock;

    invoke-static {p1}, Lmiui/widget/PictureClock;->c(Lmiui/widget/PictureClock;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lmiui/widget/PictureClock$1$1;

    invoke-direct {p2, p0}, Lmiui/widget/PictureClock$1$1;-><init>(Lmiui/widget/PictureClock$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method
