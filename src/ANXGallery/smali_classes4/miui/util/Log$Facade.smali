.class public Lmiui/util/Log$Facade;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Facade"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogcatFacade"


# instance fields
.field private Ju:Lcom/miui/internal/log/Logger;


# direct methods
.method private constructor <init>(Lcom/miui/internal/log/Logger;)V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lmiui/util/Log$Facade;->Ju:Lcom/miui/internal/log/Logger;

    .line 418
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/log/Logger;Lmiui/util/Log$1;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Lmiui/util/Log$Facade;-><init>(Lcom/miui/internal/log/Logger;)V

    return-void
.end method

.method private varargs a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 616
    invoke-static {}, Lcom/miui/internal/log/message/StringFormattedMessage;->obtain()Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/internal/log/message/StringFormattedMessage;->setFormat(Ljava/lang/String;)Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/miui/internal/log/message/StringFormattedMessage;->setParameters([Ljava/lang/Object;)Lcom/miui/internal/log/message/StringFormattedMessage;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 617
    return-void
.end method

.method private log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 612
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 613
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 459
    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 470
    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    return-void
.end method

.method public varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 481
    sget-object v0, Lcom/miui/internal/log/Level;->DEBUG:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method protected doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lmiui/util/Log$Facade;->Ju:Lcom/miui/internal/log/Logger;

    if-nez v0, :cond_0

    .line 624
    const-string p1, "LogcatFacade"

    const-string p2, "mLogger is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :cond_0
    if-nez p5, :cond_1

    .line 627
    iget-object p5, p0, Lmiui/util/Log$Facade;->Ju:Lcom/miui/internal/log/Logger;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/miui/internal/log/Logger;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object p3, p0, Lmiui/util/Log$Facade;->Ju:Lcom/miui/internal/log/Logger;

    invoke-virtual {p3, p1, p2, p5}, Lcom/miui/internal/log/Logger;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Lcom/miui/internal/log/message/Message;)V

    .line 630
    invoke-interface {p5}, Lcom/miui/internal/log/message/Message;->recycle()V

    .line 633
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 555
    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 566
    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    return-void
.end method

.method public varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 577
    sget-object v0, Lcom/miui/internal/log/Level;->ERROR:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 586
    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 587
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 597
    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    return-void
.end method

.method public varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 608
    sget-object v0, Lcom/miui/internal/log/Level;->FATAL:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 491
    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 502
    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    return-void
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 513
    sget-object v0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 427
    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 438
    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 449
    sget-object v0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 523
    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 534
    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->log(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    return-void
.end method

.method public varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 545
    sget-object v0, Lcom/miui/internal/log/Level;->WARNING:Lcom/miui/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/util/Log$Facade;->a(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    return-void
.end method
