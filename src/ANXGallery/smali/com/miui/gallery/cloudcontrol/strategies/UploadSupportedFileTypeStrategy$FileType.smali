.class Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;
.super Ljava/lang/Object;
.source "UploadSupportedFileTypeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileType"
.end annotation


# instance fields
.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extension"
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mime-type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->extension:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy$FileType;->mimeType:Ljava/lang/String;

    .line 61
    return-void
.end method
