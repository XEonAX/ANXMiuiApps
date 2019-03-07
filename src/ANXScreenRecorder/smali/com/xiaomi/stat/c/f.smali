.class public Lcom/xiaomi/stat/c/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final e:Ljava/lang/String; = "UploadPolicy"


# instance fields
.field d:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p2, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 42
    iput-object p1, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 37
    invoke-static {}, Lcom/xiaomi/stat/I;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 100
    and-int/lit8 v0, p1, -0x20

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()I
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 46
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/stat/d/m;->b(Landroid/content/Context;)Z

    move-result v2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadPolicy getExperiencePlanPolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isInternationalVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAnonymous= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaomi/stat/c/f;->d:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 48
    if-eqz v2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    iget-boolean v2, p0, Lcom/xiaomi/stat/c/f;->d:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 55
    goto :goto_0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method private c()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadPolicy getCustomPrivacyPolicy: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 66
    if-ne v1, v0, :cond_0

    .line 67
    const/4 v0, 0x3

    .line 69
    :cond_0
    return v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->c()I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->b()I

    move-result v0

    goto :goto_0
.end method

.method private e()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/l;->a(Landroid/content/Context;)I

    move-result v3

    .line 85
    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    move-result v0

    .line 86
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadPolicy getHttpServicePolicy: currentNet= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Config.getServerNetworkType= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Config.getUserNetworkType()= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (configNet & currentNet) == currentNet "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int v1, v0, v3

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 92
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    .line 93
    const/4 v2, 0x3

    .line 95
    :cond_0
    return v2

    .line 85
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    move-result v0

    goto :goto_0

    .line 89
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private f()I
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 108
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 109
    const/4 v0, 0x3

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/xiaomi/stat/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->f()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->e()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->d()I

    move-result v0

    .line 134
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->g()I

    move-result v1

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
