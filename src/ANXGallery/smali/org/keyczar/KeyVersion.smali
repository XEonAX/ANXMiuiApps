.class public Lorg/keyczar/KeyVersion;
.super Ljava/lang/Object;
.source "KeyVersion.java"


# instance fields
.field private exportable:Z
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field private status:Lorg/keyczar/enums/KeyStatus;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field private versionNumber:I
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lorg/keyczar/KeyVersion;->exportable:Z

    .line 46
    sget-object v0, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    iput-object v0, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    .line 47
    iput v1, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    .line 52
    return-void
.end method

.method public constructor <init>(ILorg/keyczar/enums/KeyStatus;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lorg/keyczar/KeyVersion;->exportable:Z

    .line 46
    sget-object v0, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    iput-object v0, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    .line 47
    iput v1, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    .line 59
    iput p1, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    .line 60
    iput-object p2, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    .line 61
    iput-boolean p3, p0, Lorg/keyczar/KeyVersion;->exportable:Z

    .line 62
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-direct {p0, p1, v0, p2}, Lorg/keyczar/KeyVersion;-><init>(ILorg/keyczar/enums/KeyStatus;Z)V

    .line 56
    return-void
.end method

.method public static read(Ljava/lang/String;)Lorg/keyczar/KeyVersion;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/KeyVersion;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyVersion;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    instance-of v1, p1, Lorg/keyczar/KeyVersion;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    check-cast p1, Lorg/keyczar/KeyVersion;

    .line 75
    invoke-virtual {p0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v1

    invoke-virtual {p1}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStatus()Lorg/keyczar/enums/KeyStatus;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    return v0
.end method

.method public isExportable()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/keyczar/KeyVersion;->exportable:Z

    return v0
.end method

.method public setStatus(Lorg/keyczar/enums/KeyStatus;)V
    .locals 0

    .prologue
    .line 101
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    :cond_0
    iput-object p1, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
