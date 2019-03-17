.class final Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;
.super Ljava/lang/Object;
.source "ExternalSettingSecretService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/ExternalSettingSecretService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileData"
.end annotation


# instance fields
.field final mFileNameInExif:Ljava/lang/String;

.field final mLocalGroupId:I

.field final mSha1:Ljava/lang/String;

.field final mSha1InExif:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "sha1InExif"    # Ljava/lang/String;
    .param p3, "fileNameInExif"    # Ljava/lang/String;
    .param p4, "localGroupId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mSha1:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mSha1InExif:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mFileNameInExif:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/miui/gallery/data/ExternalSettingSecretService$FileData;->mLocalGroupId:I

    .line 38
    return-void
.end method
