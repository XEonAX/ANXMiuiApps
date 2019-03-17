.class public Lcom/uploader/implement/a/h;
.super Ljava/lang/Object;
.source "RequestContent.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:[B

.field public final g:[B

.field public final h:[B


# direct methods
.method public constructor <init>(Ljava/io/File;JJJLjava/util/Map;[B[B[B)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "lastModified"    # J
    .param p4, "offset"    # J
    .param p6, "length"    # J
    .param p8, "header"    # Ljava/util/Map;
    .param p9, "bytes"    # [B
    .param p10, "tail"    # [B
    .param p11, "copy"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B[B[B)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/uploader/implement/a/h;->a:Ljava/io/File;

    .line 79
    iput-wide p2, p0, Lcom/uploader/implement/a/h;->b:J

    .line 80
    iput-wide p4, p0, Lcom/uploader/implement/a/h;->c:J

    .line 81
    iput-wide p6, p0, Lcom/uploader/implement/a/h;->d:J

    .line 82
    iput-object p8, p0, Lcom/uploader/implement/a/h;->e:Ljava/util/Map;

    .line 83
    iput-object p9, p0, Lcom/uploader/implement/a/h;->f:[B

    .line 84
    iput-object p10, p0, Lcom/uploader/implement/a/h;->g:[B

    .line 85
    iput-object p11, p0, Lcom/uploader/implement/a/h;->h:[B

    .line 86
    return-void
.end method
