.class Lcom/miui/screenrecorder/config/ScreenRecorderConfig$ConfigHolder;
.super Ljava/lang/Object;
.source "ScreenRecorderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/config/ScreenRecorderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;-><init>(Landroid/content/Context;Lcom/miui/screenrecorder/config/ScreenRecorderConfig$1;)V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig$ConfigHolder;->INSTANCE:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig$ConfigHolder;->INSTANCE:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    return-object v0
.end method
