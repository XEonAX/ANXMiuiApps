.class public Lcom/nexstreaming/nexeditorsdk/exception/ClipIsNotVideoException;
.super Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;
.source "ClipIsNotVideoException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "This clip is not a video clip."

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
