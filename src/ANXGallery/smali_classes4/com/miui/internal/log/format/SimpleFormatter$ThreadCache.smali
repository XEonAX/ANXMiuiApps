.class Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadCache"
.end annotation


# instance fields
.field hb:Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;

.field hc:Ljava/io/PrintWriter;

.field out:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;-><init>(Lcom/miui/internal/log/format/SimpleFormatter$1;)V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;->hb:Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;->out:Ljava/lang/StringBuilder;

    .line 112
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lcom/miui/internal/log/format/SimpleFormatter$StringBuilderWriter;

    iget-object v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;->out:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/miui/internal/log/format/SimpleFormatter$StringBuilderWriter;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;->hc:Ljava/io/PrintWriter;

    .line 113
    return-void
.end method
