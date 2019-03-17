.class public Lcom/miui/gallery/movie/ui/factory/AudioFactory;
.super Ljava/lang/Object;
.source "AudioFactory.java"


# static fields
.field private static final LOCAL:Lcom/miui/gallery/movie/entity/AudioResource;

.field private static final NONE:Lcom/miui/gallery/movie/entity/AudioResource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/miui/gallery/movie/entity/AudioResource;

    const/4 v1, 0x1

    const v2, 0x7f0201ce

    const v3, 0x7f0c02ba

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/gallery/movie/entity/AudioResource;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->NONE:Lcom/miui/gallery/movie/entity/AudioResource;

    .line 16
    new-instance v0, Lcom/miui/gallery/movie/entity/AudioResource;

    const/4 v1, 0x2

    const v2, 0x7f0201cd

    const v3, 0x7f0c02b5

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/gallery/movie/entity/AudioResource;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->LOCAL:Lcom/miui/gallery/movie/entity/AudioResource;

    return-void
.end method

.method public static getAllLocalAudios()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/movie/entity/AudioResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v0, "audioEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/movie/entity/AudioResource;>;"
    sget-object v1, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->NONE:Lcom/miui/gallery/movie/entity/AudioResource;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v1, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->LOCAL:Lcom/miui/gallery/movie/entity/AudioResource;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-object v0
.end method

.method public static getAudioDownloadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/movie/MovieConfig;->sAudioDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
