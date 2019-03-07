.class public Lcom/xiaomi/stat/MiStat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/MiStat$NetworkType;,
        Lcom/xiaomi/stat/MiStat$UserProperty;,
        Lcom/xiaomi/stat/MiStat$Event;,
        Lcom/xiaomi/stat/MiStat$Param;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must init sdk before use!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 269
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0}, Lcom/xiaomi/stat/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadInterval()I
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 236
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0}, Lcom/xiaomi/stat/e;->b()I

    move-result v0

    return v0
.end method

.method public static getUploadNetworkType()I
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 226
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0}, Lcom/xiaomi/stat/e;->a()I

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "useCustomPrivacyPolicy"    # Z

    .prologue
    .line 73
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "duplicate sdk init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Lcom/xiaomi/stat/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/stat/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 77
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "useCustomPrivacyPolicy"    # Z
    .param p4, "channel"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "duplicate sdk init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v0, Lcom/xiaomi/stat/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 85
    return-void
.end method

.method public static setCustomPrivacyState(Z)V
    .locals 1
    .param p0, "accepted"    # Z

    .prologue
    .line 242
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 243
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->d(Z)V

    .line 244
    return-void
.end method

.method public static setDebugModeEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 284
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 285
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->f(Z)V

    .line 286
    return-void
.end method

.method public static setExceptionCatcherEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 107
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 108
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->c(Z)V

    .line 109
    return-void
.end method

.method public static setIdentifiedUserProperty(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "property"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 207
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 208
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/MiStatParams;)V

    .line 209
    return-void
.end method

.method public static setIdentifiedUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 203
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static setInternationalRegion(ZLjava/lang/String;)V
    .locals 1
    .param p0, "isInternationalVersion"    # Z
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 253
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(ZLjava/lang/String;)V

    .line 254
    return-void
.end method

.method public static setNetworkAccessEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 102
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 103
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(Z)V

    .line 104
    return-void
.end method

.method public static setStatisticEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 97
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 98
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Z)V

    .line 99
    return-void
.end method

.method public static setUploadInterval(I)V
    .locals 1
    .param p0, "intervalInSeconds"    # I

    .prologue
    .line 230
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 231
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(I)V

    .line 232
    return-void
.end method

.method public static setUploadNetworkType(I)V
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 220
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 221
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(I)V

    .line 222
    return-void
.end method

.method public static setUseSystemUploadingService(Z)Z
    .locals 1
    .param p0, "useSystemUploadingService"    # Z

    .prologue
    .line 276
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 277
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->e(Z)Z

    move-result v0

    return v0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 213
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->e(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static setUserProperty(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "property"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 197
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 198
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;)V

    .line 199
    return-void
.end method

.method public static setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 193
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 134
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->c(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 143
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 144
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 145
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "eventGroup"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 139
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "eventGroup"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 148
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 149
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 150
    return-void
.end method

.method public static trackException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 180
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public static trackException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 185
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static trackHttpEvent(Lcom/xiaomi/stat/HttpEvent;)V
    .locals 1
    .param p0, "httpEvent"    # Lcom/xiaomi/stat/HttpEvent;

    .prologue
    .line 260
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 261
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/HttpEvent;)V

    .line 262
    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 157
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->c(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 166
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 167
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 168
    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "eventGroup"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 162
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "eventGroup"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 171
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 172
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 173
    return-void
.end method

.method public static trackPageEnd(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 121
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static trackPageEnd(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 125
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 126
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 127
    return-void
.end method

.method public static trackPageStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 116
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static trackPlainTextEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 293
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method
