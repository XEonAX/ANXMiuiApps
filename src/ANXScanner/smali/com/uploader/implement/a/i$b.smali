.class Lcom/uploader/implement/a/i$b;
.super Ljava/lang/Object;
.source "UploaderAction.java"

# interfaces
.implements Lcom/uploader/export/ITaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
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

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/util/Map;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .param p3, "bizResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lcom/uploader/implement/a/i$b;->a:Ljava/util/Map;

    .line 577
    iput-object p2, p0, Lcom/uploader/implement/a/i$b;->c:Ljava/lang/String;

    .line 578
    iput-object p3, p0, Lcom/uploader/implement/a/i$b;->b:Ljava/lang/String;

    .line 579
    return-void
.end method


# virtual methods
.method public getBizResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/uploader/implement/a/i$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/uploader/implement/a/i$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 593
    iget-object v0, p0, Lcom/uploader/implement/a/i$b;->a:Ljava/util/Map;

    return-object v0
.end method
