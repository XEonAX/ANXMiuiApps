.class public Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$EncryptedException;
.super Ljava/io/IOException;
.source "AssetPackageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 682
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 690
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 694
    return-void
.end method
