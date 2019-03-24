.class Lmiui/util/Log$FileLoggerInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLoggerInstance"
.end annotation


# static fields
.field static final Jv:Lmiui/util/Log$Facade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lmiui/util/Log$Facade;

    invoke-static {}, Lcom/miui/internal/log/LoggerFactory;->getFileLogger()Lcom/miui/internal/log/Logger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/Log$Facade;-><init>(Lcom/miui/internal/log/Logger;Lmiui/util/Log$1;)V

    sput-object v0, Lmiui/util/Log$FileLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
