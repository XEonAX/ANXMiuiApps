.class public Lmiui/util/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/Log$FullFacade;,
        Lmiui/util/Log$Facade;,
        Lmiui/util/Log$FullLoggerInstance;,
        Lmiui/util/Log$FileLoggerInstance;,
        Lmiui/util/Log$LogcatLoggerInstance;,
        Lmiui/util/Log$DumpLogReceiver;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 152
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 162
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 173
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 184
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 305
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 317
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 327
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 338
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 349
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 385
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 396
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 407
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public static getFileLogger()Lmiui/util/Log$Facade;
    .locals 1

    .line 55
    sget-object v0, Lmiui/util/Log$FileLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static getFullLogger()Lmiui/util/Log$Facade;
    .locals 1

    .line 62
    sget-object v0, Lmiui/util/Log$FullLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static getLogcatLogger()Lmiui/util/Log$Facade;
    .locals 1

    .line 48
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 207
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 217
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 228
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    return-void
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 239
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 97
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 118
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 129
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 250
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 262
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 272
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 283
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 294
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 363
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 375
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    return-void
.end method
