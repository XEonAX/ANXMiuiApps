.class Lmiui/net/http/HttpRequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWrapper"
.end annotation


# instance fields
.field public Dp:Ljava/io/InputStream;

.field public Dq:J

.field public Dr:Ljava/lang/String;

.field public contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->Dp:Ljava/io/InputStream;

    .line 308
    iput-wide p2, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->Dq:J

    .line 309
    if-nez p4, :cond_0

    const-string p4, "nofilename"

    :cond_0
    iput-object p4, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->Dr:Ljava/lang/String;

    .line 310
    iput-object p5, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 311
    return-void
.end method
