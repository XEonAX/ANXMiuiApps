.class Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDateFormat"
.end annotation


# static fields
.field private static final gR:I = 0x3e8

.field private static final gS:I = 0xea60

.field private static final gT:I = 0x6

.field private static final gU:I = 0x3


# instance fields
.field private gV:Ljava/lang/StringBuilder;

.field private gW:Ljava/util/Calendar;

.field private gX:J

.field private gY:J

.field private gZ:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/log/format/SimpleFormatter$1;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 2

    .line 169
    const/16 v0, 0x30

    const/16 v1, 0xa

    packed-switch p3, :pswitch_data_0

    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :pswitch_0
    if-ge p2, v1, :cond_0

    .line 172
    const-string p3, "00"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :cond_0
    const/16 p3, 0x64

    if-ge p2, p3, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    goto :goto_1

    .line 179
    :pswitch_1
    if-ge p2, v1, :cond_2

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    nop

    .line 188
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(J)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    iget-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    iget-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    iget-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    iget-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    iget-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gW:Ljava/util/Calendar;

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 165
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;J)V
    .locals 7

    .line 129
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gX:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_4

    .line 130
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gY:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x3e8

    const-wide/32 v3, 0xea60

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gY:J

    cmp-long v0, p2, v5

    if-ltz v0, :cond_3

    iget-wide v5, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gY:J

    add-long/2addr v5, v3

    cmp-long v0, p2, v5

    if-ltz v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    iget-wide v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gZ:J

    cmp-long v0, p2, v3

    const/4 v3, 0x3

    if-ltz v0, :cond_2

    iget-wide v4, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gZ:J

    add-long/2addr v4, v1

    cmp-long v0, p2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gZ:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 145
    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 136
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gY:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 137
    div-int/lit16 v1, v0, 0x3e8

    .line 138
    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    .line 139
    iget-object v4, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    iget-object v4, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v1, v5}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 142
    iget-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gY:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gZ:J

    .line 143
    goto :goto_2

    .line 131
    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->a(J)V

    .line 132
    div-long v5, p2, v3

    mul-long/2addr v5, v3

    iput-wide v5, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gY:J

    .line 133
    div-long v3, p2, v1

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gZ:J

    .line 149
    :goto_2
    iput-wide p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gX:J

    .line 151
    :cond_4
    iget-object p2, p0, Lcom/miui/internal/log/format/SimpleFormatter$CachedDateFormat;->gV:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 152
    return-void
.end method
