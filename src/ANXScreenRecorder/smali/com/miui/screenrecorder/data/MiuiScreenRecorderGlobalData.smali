.class public Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;
.super Ljava/lang/Object;
.source "MiuiScreenRecorderGlobalData.java"


# static fields
.field private static mGlobalData:Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;


# instance fields
.field private mIsRecording:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->mIsRecording:Z

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->mGlobalData:Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    invoke-direct {v0}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->mGlobalData:Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    .line 17
    :cond_0
    sget-object v0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->mGlobalData:Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    return-object v0
.end method


# virtual methods
.method public getRecording()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->mIsRecording:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->mIsRecording:Z

    .line 30
    return-void
.end method

.method public setRecording(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->mIsRecording:Z

    .line 22
    return-void
.end method
