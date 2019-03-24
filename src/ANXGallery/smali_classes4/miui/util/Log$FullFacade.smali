.class Lmiui/util/Log$FullFacade;
.super Lmiui/util/Log$Facade;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullFacade"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiui/util/Log$Facade;-><init>(Lcom/miui/internal/log/Logger;Lmiui/util/Log$1;)V

    .line 640
    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/Log$1;)V
    .locals 0

    .line 637
    invoke-direct {p0}, Lmiui/util/Log$FullFacade;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V
    .locals 7

    .line 644
    sget-object v0, Lmiui/util/Log$LogcatLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 645
    sget-object v1, Lmiui/util/Log$FileLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiui/util/Log$Facade;->doLog(Lcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/miui/internal/log/message/Message;)V

    .line 646
    return-void
.end method
