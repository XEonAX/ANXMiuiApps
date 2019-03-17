.class Lcom/alibaba/imagesearch/utils/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x5a

    const/16 v1, 0x1e

    sput v0, Lcom/alibaba/imagesearch/utils/b$b;->d:I

    sput v0, Lcom/alibaba/imagesearch/utils/b$b;->e:I

    const/16 v0, 0x32

    sput v0, Lcom/alibaba/imagesearch/utils/b$b;->f:I

    sput v1, Lcom/alibaba/imagesearch/utils/b$b;->g:I

    sput v1, Lcom/alibaba/imagesearch/utils/b$b;->h:I

    const-string v0, "wifi"

    sput-object v0, Lcom/alibaba/imagesearch/utils/b$b;->i:Ljava/lang/String;

    const-string v0, "4g"

    sput-object v0, Lcom/alibaba/imagesearch/utils/b$b;->j:Ljava/lang/String;

    const-string v0, "3g"

    sput-object v0, Lcom/alibaba/imagesearch/utils/b$b;->k:Ljava/lang/String;

    const-string v0, "2g"

    sput-object v0, Lcom/alibaba/imagesearch/utils/b$b;->l:Ljava/lang/String;

    const-string v0, "other"

    sput-object v0, Lcom/alibaba/imagesearch/utils/b$b;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/imagesearch/utils/b$b;->n:Ljava/util/Map;

    sget-object v0, Lcom/alibaba/imagesearch/utils/b$b;->n:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->i:Ljava/lang/String;

    sget v2, Lcom/alibaba/imagesearch/utils/b$b;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/utils/b$b;->n:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->j:Ljava/lang/String;

    sget v2, Lcom/alibaba/imagesearch/utils/b$b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/utils/b$b;->n:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->k:Ljava/lang/String;

    sget v2, Lcom/alibaba/imagesearch/utils/b$b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/utils/b$b;->n:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->l:Ljava/lang/String;

    sget v2, Lcom/alibaba/imagesearch/utils/b$b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/utils/b$b;->n:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/imagesearch/utils/b$b;->m:Ljava/lang/String;

    sget v2, Lcom/alibaba/imagesearch/utils/b$b;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/alibaba/imagesearch/utils/b$b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/imagesearch/utils/b$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0xc8

    const/16 v1, 0x280

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/imagesearch/utils/b$b;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/imagesearch/utils/b$b;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/utils/b$b;->o:Ljava/lang/String;

    sget v0, Lcom/alibaba/imagesearch/utils/b$b;->f:I

    iput v0, p0, Lcom/alibaba/imagesearch/utils/b$b;->a:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/imagesearch/utils/b$b;->b:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    iput-object p1, p0, Lcom/alibaba/imagesearch/utils/b$b;->o:Ljava/lang/String;

    iput p2, p0, Lcom/alibaba/imagesearch/utils/b$b;->a:I

    iput p3, p0, Lcom/alibaba/imagesearch/utils/b$b;->b:I

    iput p4, p0, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/alibaba/imagesearch/utils/b$b;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget v0, Lcom/alibaba/imagesearch/utils/b$b;->f:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageProcessRule{netType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/utils/b$b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/imagesearch/utils/b$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/imagesearch/utils/b$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/imagesearch/utils/b$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
