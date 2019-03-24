.class public Lmiui/drm/DrmBroadcast;
.super Ljava/lang/Object;
.source "DrmBroadcast.java"


# static fields
.field public static final ACTION_CHECK_TIME_UP:Ljava/lang/String; = "miui.intent.action.CHECK_TIME_UP"

.field private static final FIRST_DELAY_AFTER_BOOT:J = 0x1b7740L

.field private static final INTERVAL:J = 0x6ddd00L

.field private static final REQUEST_CODE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.CHECK_TIME_UP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/drm/ThemeReceiver;

    invoke-direct {v2}, Lmiui/drm/ThemeReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method public broadcast()V
    .locals 10

    .line 31
    iget-object v0, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 32
    .local v0, "alarm":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.CHECK_TIME_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .line 33
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.action.CHECK_TIME_UP"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lmiui/drm/DrmBroadcast;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 35
    .local v9, "pi":Landroid/app/PendingIntent;
    const/4 v2, 0x3

    const-wide/32 v3, 0x1b7740

    const-wide/32 v5, 0x6ddd00

    move-object v1, v0

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 36
    return-void
.end method
