.class public Lcom/miui/gallery/cloud/card/exception/NoResultException;
.super Ljava/lang/Exception;
.source "NoResultException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "CommonGalleryRequest do not return target object!"

    return-object v0
.end method
