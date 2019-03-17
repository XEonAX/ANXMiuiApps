.class public interface abstract Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;
.super Ljava/lang/Object;
.source "nexExternalExportProvider.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportMethod;
.implements Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;


# static fields
.field public static final nexExportFormatMandatoryKeys:[Ljava/lang/String;

.field public static final nexExportFormatOptionalKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v3

    const-string v1, "path"

    aput-object v1, v0, v4

    const-string/jumbo v1, "width"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "intervaltime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "starttime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "endtime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;->nexExportFormatMandatoryKeys:[Ljava/lang/String;

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "uuid"

    aput-object v1, v0, v3

    const-string v1, "quality"

    aput-object v1, v0, v4

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;->nexExportFormatOptionalKeys:[Ljava/lang/String;

    return-void
.end method
