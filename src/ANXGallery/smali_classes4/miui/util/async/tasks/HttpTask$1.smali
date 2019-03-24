.class Lmiui/util/async/tasks/HttpTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/net/http/HttpSession$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/tasks/HttpTask;->request()Lmiui/net/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LG:Lmiui/util/async/tasks/HttpTask;


# direct methods
.method constructor <init>(Lmiui/util/async/tasks/HttpTask;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask$1;->LG:Lmiui/util/async/tasks/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 5

    .line 125
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 126
    mul-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x5f000000

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-long p3, p1

    .line 127
    mul-long/2addr v0, p3

    long-to-float p1, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-long p1, p1

    .line 129
    move-wide v3, p1

    move-wide p1, p3

    move-wide p3, v3

    :cond_0
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask$1;->LG:Lmiui/util/async/tasks/HttpTask;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-virtual {v0, p1, p2}, Lmiui/util/async/tasks/HttpTask;->publishProgress(II)V

    .line 130
    return-void
.end method
