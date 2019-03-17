.class public Lcom/xiaomi/mistatistic/sdk/controller/j;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "log getMessage exception :"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    packed-switch p0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    :pswitch_2
    invoke-static {v0, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    :pswitch_3
    invoke-static {v0, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    :pswitch_4
    invoke-static {v0, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static varargs a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    packed-switch p0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 31
    :pswitch_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    :pswitch_3
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    :pswitch_4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x4

    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {v0, p2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "MI_STAT"

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x3

    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 164
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI_STAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 201
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/j;->a:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "MI_STAT"

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI_STAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
