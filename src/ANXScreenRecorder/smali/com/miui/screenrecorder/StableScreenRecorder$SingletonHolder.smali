.class Lcom/miui/screenrecorder/StableScreenRecorder$SingletonHolder;
.super Ljava/lang/Object;
.source "StableScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/StableScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/screenrecorder/StableScreenRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/miui/screenrecorder/StableScreenRecorder;

    .line 134
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/screenrecorder/StableScreenRecorder;-><init>(Landroid/content/Context;Lcom/miui/screenrecorder/StableScreenRecorder$1;)V

    sput-object v0, Lcom/miui/screenrecorder/StableScreenRecorder$SingletonHolder;->INSTANCE:Lcom/miui/screenrecorder/StableScreenRecorder;

    .line 133
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/screenrecorder/StableScreenRecorder;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/miui/screenrecorder/StableScreenRecorder$SingletonHolder;->INSTANCE:Lcom/miui/screenrecorder/StableScreenRecorder;

    return-object v0
.end method
