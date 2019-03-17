.class public Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;
.super Ljava/lang/Object;
.source "nexSaveDataFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nexAudioItemOf"
.end annotation


# instance fields
.field public mClip:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

.field public mId:I

.field public mSpeedControl:I

.field public mTrimEndDuration:I

.field public mTrimStartDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;->mSpeedControl:I

    return-void
.end method
