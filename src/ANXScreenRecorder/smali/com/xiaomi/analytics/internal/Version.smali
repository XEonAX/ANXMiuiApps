.class public Lcom/xiaomi/analytics/internal/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/analytics/internal/Version;",
        ">;"
    }
.end annotation


# instance fields
.field public build:I

.field public major:I

.field public minor:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "build"    # I

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    .line 5
    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    .line 6
    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    .line 9
    iput p1, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    .line 10
    iput p2, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    .line 11
    iput p3, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v2, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    .line 5
    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    .line 6
    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    .line 16
    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    .line 18
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    .line 19
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->build:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v0    # "split":[Ljava/lang/String;
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/analytics/internal/Version;)I
    .locals 2
    .param p1, "v"    # Lcom/xiaomi/analytics/internal/Version;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 36
    :cond_0
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/Version;->major:I

    if-eq v0, v1, :cond_1

    .line 37
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/Version;->major:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/Version;->minor:I

    if-eq v0, v1, :cond_2

    .line 40
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/Version;->minor:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 42
    :cond_2
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/Version;->build:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/xiaomi/analytics/internal/Version;

    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result v0

    return v0
.end method

.method public equalsIgnoreBuild(Lcom/xiaomi/analytics/internal/Version;)Z
    .locals 3
    .param p1, "v"    # Lcom/xiaomi/analytics/internal/Version;

    .prologue
    const/4 v0, 0x0

    .line 25
    if-nez p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    iget v2, p1, Lcom/xiaomi/analytics/internal/Version;->major:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    iget v2, p1, Lcom/xiaomi/analytics/internal/Version;->minor:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
