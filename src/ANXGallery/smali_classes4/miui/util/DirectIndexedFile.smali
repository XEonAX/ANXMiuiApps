.class public Lmiui/util/DirectIndexedFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$Builder;,
        Lmiui/util/DirectIndexedFile$Reader;,
        Lmiui/util/DirectIndexedFile$DataInputStream;,
        Lmiui/util/DirectIndexedFile$DataInputRandom;,
        Lmiui/util/DirectIndexedFile$InputFile;,
        Lmiui/util/DirectIndexedFile$FileHeader;,
        Lmiui/util/DirectIndexedFile$DescriptionPair;,
        Lmiui/util/DirectIndexedFile$DataItemDescriptor;,
        Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DensityIndexFile: "


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static build(I)Lmiui/util/DirectIndexedFile$Builder;
    .locals 2

    .line 1501
    new-instance v0, Lmiui/util/DirectIndexedFile$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/util/DirectIndexedFile$Builder;-><init>(ILmiui/util/DirectIndexedFile$1;)V

    return-object v0
.end method

.method public static open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1517
    new-instance v0, Lmiui/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;Lmiui/util/DirectIndexedFile$1;)V

    return-object v0
.end method

.method public static open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    new-instance v0, Lmiui/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;Lmiui/util/DirectIndexedFile$1;)V

    return-object v0
.end method
