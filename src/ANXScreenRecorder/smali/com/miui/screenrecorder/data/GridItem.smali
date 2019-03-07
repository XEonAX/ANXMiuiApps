.class public Lcom/miui/screenrecorder/data/GridItem;
.super Ljava/lang/Object;
.source "GridItem.java"


# instance fields
.field private duration:Ljava/lang/String;

.field private headerId:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/data/GridItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/screenrecorder/data/GridItem;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/screenrecorder/data/GridItem;->headerId:I

    .line 25
    iget-object v0, p1, Lcom/miui/screenrecorder/data/GridItem;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->path:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/miui/screenrecorder/data/GridItem;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->time:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/miui/screenrecorder/data/GridItem;->size:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->size:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/miui/screenrecorder/data/GridItem;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->name:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/miui/screenrecorder/data/GridItem;->duration:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->duration:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/miui/screenrecorder/data/GridItem;->thumbnailPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->thumbnailPath:Ljava/lang/String;

    .line 31
    iget v0, p1, Lcom/miui/screenrecorder/data/GridItem;->headerId:I

    iput v0, p0, Lcom/miui/screenrecorder/data/GridItem;->headerId:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "size"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "duration"    # Ljava/lang/String;
    .param p6, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/screenrecorder/data/GridItem;->headerId:I

    .line 16
    iput-object p1, p0, Lcom/miui/screenrecorder/data/GridItem;->path:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/miui/screenrecorder/data/GridItem;->time:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/miui/screenrecorder/data/GridItem;->size:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/miui/screenrecorder/data/GridItem;->name:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/miui/screenrecorder/data/GridItem;->duration:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/miui/screenrecorder/data/GridItem;->thumbnailPath:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 51
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 35
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/miui/screenrecorder/data/GridItem;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/miui/screenrecorder/data/GridItem;

    .line 40
    .local v0, "item":Lcom/miui/screenrecorder/data/GridItem;
    iget-object v2, p0, Lcom/miui/screenrecorder/data/GridItem;->path:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/screenrecorder/data/GridItem;->path:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/miui/screenrecorder/data/GridItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/screenrecorder/data/GridItem;->time:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/screenrecorder/data/GridItem;->time:Ljava/lang/String;

    .line 41
    invoke-direct {p0, v2, v3}, Lcom/miui/screenrecorder/data/GridItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/screenrecorder/data/GridItem;->size:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/screenrecorder/data/GridItem;->size:Ljava/lang/String;

    .line 42
    invoke-direct {p0, v2, v3}, Lcom/miui/screenrecorder/data/GridItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/screenrecorder/data/GridItem;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/screenrecorder/data/GridItem;->name:Ljava/lang/String;

    .line 43
    invoke-direct {p0, v2, v3}, Lcom/miui/screenrecorder/data/GridItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/screenrecorder/data/GridItem;->duration:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/screenrecorder/data/GridItem;->duration:Ljava/lang/String;

    .line 44
    invoke-direct {p0, v2, v3}, Lcom/miui/screenrecorder/data/GridItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    .end local v0    # "item":Lcom/miui/screenrecorder/data/GridItem;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/miui/screenrecorder/data/GridItem;->headerId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/screenrecorder/data/GridItem;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "howLong"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/screenrecorder/data/GridItem;->duration:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setHeaderId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/miui/screenrecorder/data/GridItem;->headerId:I

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/screenrecorder/data/GridItem;->name:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/screenrecorder/data/GridItem;->path:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/screenrecorder/data/GridItem;->size:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/screenrecorder/data/GridItem;->thumbnailPath:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/screenrecorder/data/GridItem;->time:Ljava/lang/String;

    .line 70
    return-void
.end method
