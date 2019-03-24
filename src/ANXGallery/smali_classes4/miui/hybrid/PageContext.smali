.class public Lmiui/hybrid/PageContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private yR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 63
    return v0

    .line 65
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    check-cast p1, Lmiui/hybrid/PageContext;

    .line 69
    iget-object v2, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    iget-object v3, p1, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    .line 70
    return v0

    .line 72
    :cond_2
    iget-object v2, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    iget-object p1, p1, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    return v0

    .line 73
    :cond_4
    :goto_0
    return v1

    .line 66
    :cond_5
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lmiui/hybrid/PageContext;->yR:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    nop

    .line 55
    nop

    .line 56
    iget-object v0, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 57
    return v1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmiui/hybrid/PageContext;->id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmiui/hybrid/PageContext;->yR:Ljava/lang/String;

    .line 50
    return-void
.end method
