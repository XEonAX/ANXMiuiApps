.class Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;
.super Ljava/lang/Object;
.source "XMLItemDefReader.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/assetpackage/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/RectF;

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/i$1;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;-><init>()V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$2;->b:[I

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_0
    const-string v0, "selection"

    .line 334
    :goto_0
    return-object v0

    .line 320
    :pswitch_1
    const-string/jumbo v0, "switch"

    goto :goto_0

    .line 322
    :pswitch_2
    const-string v0, "image"

    goto :goto_0

    .line 324
    :pswitch_3
    const-string v0, "range"

    goto :goto_0

    .line 326
    :pswitch_4
    const-string v0, "rect"

    goto :goto_0

    .line 329
    :pswitch_5
    const-string v0, "color"

    goto :goto_0

    .line 331
    :pswitch_6
    const-string/jumbo v0, "text"

    goto :goto_0

    .line 334
    :pswitch_7
    const-string v0, "point"

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemParameterType;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->g:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->i:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->j:I

    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->m:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/g$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/i$a;->n:Ljava/util/List;

    return-object v0
.end method
