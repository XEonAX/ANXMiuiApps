.class Lmiui/util/Log$FullLoggerInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullLoggerInstance"
.end annotation


# static fields
.field static final Jv:Lmiui/util/Log$Facade;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lmiui/util/Log$FullFacade;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/Log$FullFacade;-><init>(Lmiui/util/Log$1;)V

    sput-object v0, Lmiui/util/Log$FullLoggerInstance;->Jv:Lmiui/util/Log$Facade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
