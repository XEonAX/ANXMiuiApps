.class final Lcom/alibaba/imagesearch/utils/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uploader/export/IUploaderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/utils/b$c;Landroid/graphics/Rect;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/imagesearch/utils/b$c;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/utils/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/utils/c$1;->a:Lcom/alibaba/imagesearch/utils/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "imgsearch_baichuan"

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/imagesearch/utils/c$1;->a:Lcom/alibaba/imagesearch/utils/b$c;

    iget-object v0, v0, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "jpg"

    return-object v0
.end method

.method public getMetaInfo()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
