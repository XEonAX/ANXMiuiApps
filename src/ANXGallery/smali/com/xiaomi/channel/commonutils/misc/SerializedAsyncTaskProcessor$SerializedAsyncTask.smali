.class public abstract Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SerializedAsyncTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public preProcess()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public abstract process()V
.end method
