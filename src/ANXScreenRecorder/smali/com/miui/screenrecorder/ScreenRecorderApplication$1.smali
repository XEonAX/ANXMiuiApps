.class Lcom/miui/screenrecorder/ScreenRecorderApplication$1;
.super Ljava/lang/Object;
.source "ScreenRecorderApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/ScreenRecorderApplication;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/ScreenRecorderApplication;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/ScreenRecorderApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/ScreenRecorderApplication;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/screenrecorder/ScreenRecorderApplication$1;->this$0:Lcom/miui/screenrecorder/ScreenRecorderApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->getInstance()Lcom/miui/screenrecorder/config/PhoneConfig;

    .line 47
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/MSRImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/tools/MSRImageLoader;

    .line 48
    return-void
.end method
