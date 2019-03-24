.class Lmiui/net/http/HttpSession$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingInputStream"
.end annotation


# instance fields
.field private DB:Lmiui/net/http/HttpSession$ProgressListener;

.field private DC:J

.field private DD:J

.field private Db:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 522
    iput-wide p2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->Db:J

    .line 523
    iput-object p5, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DB:Lmiui/net/http/HttpSession$ProgressListener;

    .line 524
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    .line 525
    iput-wide p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DD:J

    .line 527
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 528
    const-string p1, "bytes\\s+(\\d+)-(\\d+)/(\\d+)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 529
    invoke-virtual {p1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 531
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    iput-wide p4, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    .line 532
    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->Db:J

    .line 535
    :cond_0
    return-void
.end method

.method private O(I)V
    .locals 4

    .line 563
    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->Db:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DB:Lmiui/net/http/HttpSession$ProgressListener;

    if-eqz v0, :cond_1

    .line 564
    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->Db:J

    div-long/2addr v0, v2

    .line 565
    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DD:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const/16 v2, 0x400

    if-le p1, v2, :cond_1

    .line 566
    :cond_0
    iput-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DD:J

    .line 567
    iget-object p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DB:Lmiui/net/http/HttpSession$ProgressListener;

    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->Db:J

    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    invoke-interface {p1, v0, v1, v2, v3}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 570
    :cond_1
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 555
    if-lez v0, :cond_0

    .line 556
    iget-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    .line 557
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/net/http/HttpSession$CountingInputStream;->O(I)V

    .line 559
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/net/http/HttpSession$CountingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 545
    if-lez p1, :cond_0

    .line 546
    iget-wide p2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->DC:J

    .line 547
    invoke-direct {p0, p1}, Lmiui/net/http/HttpSession$CountingInputStream;->O(I)V

    .line 549
    :cond_0
    return p1
.end method
