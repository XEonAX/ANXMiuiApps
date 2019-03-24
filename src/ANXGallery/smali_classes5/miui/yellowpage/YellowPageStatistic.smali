.class public Lmiui/yellowpage/YellowPageStatistic;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageStatistic$StatsContext;,
        Lmiui/yellowpage/YellowPageStatistic$Display;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPageStatistic"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .line 14
    invoke-static {p0}, Lmiui/yellowpage/YellowPageStatistic;->isUriIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static clickModuleItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;
    .param p2, "hotLinkUrl"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "display"    # Ljava/lang/String;
    .param p5, "sourceModuleId"    # I

    .line 197
    new-instance v7, Lmiui/yellowpage/YellowPageStatistic$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/yellowpage/YellowPageStatistic$4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v7}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public static clickNavigationItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .line 176
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$3;

    invoke-direct {v0, p0, p1}, Lmiui/yellowpage/YellowPageStatistic$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public static clickSearchItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;

    .line 244
    new-instance v6, Lmiui/yellowpage/YellowPageStatistic$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/YellowPageStatistic$6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public static clickYellowPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # Ljava/lang/String;
    .param p2, "display"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "srcModuleId"    # I

    .line 221
    new-instance v6, Lmiui/yellowpage/YellowPageStatistic$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/YellowPageStatistic$5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method private static isUriIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 304
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 305
    return v0

    .line 307
    :cond_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 309
    const/4 v0, 0x1

    return v0

    .line 311
    :cond_1
    return v0
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "display"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "srcModuleId"    # I
    .param p5, "values"    # Ljava/lang/String;

    .line 281
    new-instance v7, Lmiui/yellowpage/YellowPageStatistic$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/yellowpage/YellowPageStatistic$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v7}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public static uploadData(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 266
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "upload_data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 270
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 271
    return v2

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    .local v1, "result":Landroid/net/Uri;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "1"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public static viewNormalDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "srcModuleId"    # I

    .line 155
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/yellowpage/YellowPageStatistic$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public static viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "hit"    # Z
    .param p4, "yid"    # Ljava/lang/String;
    .param p5, "displayAdName"    # Ljava/lang/String;
    .param p6, "show"    # Z

    .line 120
    new-instance v8, Lmiui/yellowpage/YellowPageStatistic$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lmiui/yellowpage/YellowPageStatistic$1;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v8}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
