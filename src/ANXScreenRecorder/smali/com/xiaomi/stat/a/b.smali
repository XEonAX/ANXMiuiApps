.class public Lcom/xiaomi/stat/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/xiaomi/stat/a/b;->d:I

    .line 17
    iput-boolean p3, p0, Lcom/xiaomi/stat/a/b;->e:Z

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/stat/a/b;->f:Z

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v0, "sub"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-boolean v0, p0, Lcom/xiaomi/stat/a/b;->f:Z

    if-eqz v0, :cond_1

    .line 45
    const-string v0, " is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_0
    iget v0, p0, Lcom/xiaomi/stat/a/b;->d:I

    if-eqz v0, :cond_0

    .line 50
    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "eg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \""

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mistat_basic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is_am"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/xiaomi/stat/a/b;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    const-string v0, " = \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/xiaomi/stat/a/b;->e:Z

    if-eq v2, p3, :cond_2

    :cond_0
    move v0, v1

    .line 38
    :cond_1
    :goto_0
    return v0

    .line 28
    :cond_2
    iget v2, p0, Lcom/xiaomi/stat/a/b;->d:I

    if-eqz v2, :cond_1

    .line 33
    iget-boolean v2, p0, Lcom/xiaomi/stat/a/b;->f:Z

    if-eqz v2, :cond_3

    const-string v2, "mistat_basic"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 38
    goto :goto_0
.end method
