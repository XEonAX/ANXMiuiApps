.class public Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$LocalPathNotAvailableException;
.super Ljava/io/IOException;
.source "AssetPackageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalPathNotAvailableException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 700
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 712
    return-void
.end method
