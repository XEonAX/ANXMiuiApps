.class public Lcom/xiaomi/stat/d/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MI_STAT"

.field private static b:Z = false

.field private static final c:I = 0xfa0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string p1, "MI_STAT"

    .line 32
    :cond_0
    if-nez p0, :cond_2

    .line 33
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 35
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 37
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 38
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 39
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 41
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "MI_STAT"

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 129
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 59
    sput-boolean p0, Lcom/xiaomi/stat/d/k;->b:Z

    .line 60
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    return v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xfa0

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p0, p1, v0, v2}, Lcom/xiaomi/stat/d/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/stat/d/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const-string v0, "MI_STAT"

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    const-string v0, "MI_STAT"

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    const-string v0, "MI_STAT"

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/xiaomi/stat/d/k;->b:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    const-string v0, "MI_STAT"

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/stat/d/k;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method
