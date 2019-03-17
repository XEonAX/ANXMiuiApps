.class public final Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
.super Ljava/lang/Object;
.source "nexExportFormatBuilder.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "nexExportFormatBuilder"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    return-void
.end method

.method public static Builder()Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/nexstreaming/nexeditorsdk/nexExportFormat;
    .locals 4

    .prologue
    .line 132
    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;

    invoke-direct {v2}, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 136
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexExportFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    return-object v2
.end method

.method public setAudioBitrate(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "audiobitrate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object p0
.end method

.method public setAudioCodec(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "audiocodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0
.end method

.method public setAudioSampleRate(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "audiosamplerate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public setEndTime(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "endtime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object p0
.end method

.method public setHeight(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "height"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object p0
.end method

.method public setIntervalTime(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "intervaltime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object p0
.end method

.method public setMaxFileSize(J)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "maxfilesize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "path"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object p0
.end method

.method public setQuality(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string v1, "quality"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object p0
.end method

.method public setStartTime(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "starttime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-object p0
.end method

.method public setTagID(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object p0
.end method

.method public setUUID(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-object p0
.end method

.method public setUserField(Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-object p0
.end method

.method public setVideoBitrate(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "videobitrate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object p0
.end method

.method public setVideoCodec(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "videocodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object p0
.end method

.method public setVideoFPS(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "videofps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p0
.end method

.method public setVideoLevel(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "videolevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public setVideoProfile(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "videoprofile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object p0
.end method

.method public setVideoRotate(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "videorotate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method

.method public setWidth(I)Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExportFormatBuilder;->formats:Ljava/util/Map;

    const-string/jumbo v1, "width"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object p0
.end method
