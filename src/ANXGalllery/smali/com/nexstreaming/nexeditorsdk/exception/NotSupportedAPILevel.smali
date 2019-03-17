.class public Lcom/nexstreaming/nexeditorsdk/exception/NotSupportedAPILevel;
.super Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;
.source "NotSupportedAPILevel.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Not Supported API Level(0)"

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
