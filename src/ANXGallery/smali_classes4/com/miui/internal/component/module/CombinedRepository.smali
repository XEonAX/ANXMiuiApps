.class public Lcom/miui/internal/component/module/CombinedRepository;
.super Lmiui/module/Repository;
.source "SourceFile"


# instance fields
.field private dw:[Lmiui/module/Repository;


# direct methods
.method public varargs constructor <init>([Lmiui/module/Repository;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/internal/component/module/CombinedRepository;->dw:[Lmiui/module/Repository;

    .line 13
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 5

    .line 17
    iget-object v0, p0, Lcom/miui/internal/component/module/CombinedRepository;->dw:[Lmiui/module/Repository;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 18
    invoke-virtual {v4, p1}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    const/4 p1, 0x1

    return p1

    .line 17
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_1
    return v1
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/miui/internal/component/module/CombinedRepository;->dw:[Lmiui/module/Repository;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 28
    invoke-virtual {v3, p2}, Lmiui/module/Repository;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v3, p1, p2}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
