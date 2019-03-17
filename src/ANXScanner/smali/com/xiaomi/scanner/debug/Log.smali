.class public Lcom/xiaomi/scanner/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/debug/Log$Tag;
    }
.end annotation


# static fields
.field public static final SCANNER_LOGTAG_PREFIX:Ljava/lang/String; = "SCAN_"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/debug/Log;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/xiaomi/scanner/debug/Log;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method public static d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public static e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public static i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_0
    return-void
.end method

.method private static isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z
    .locals 5
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "level"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/debug/LogHelper;->isDebugMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/debug/LogHelper;->getOverrideLevel()I

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/debug/LogHelper;->getOverrideLevel()I

    move-result v3

    if-le v3, p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 126
    :cond_2
    const-string v3, "SCAN_"

    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/xiaomi/scanner/debug/Log;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag too long:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move v1, v2

    .line 131
    goto :goto_0
.end method

.method public static t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/debug/LogHelper;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public static v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    return-void
.end method

.method public static w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    return-void
.end method

.method public static w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Lcom/xiaomi/scanner/debug/Log$Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_0
    return-void
.end method
