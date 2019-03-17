.class public Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->d:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;I)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->d:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->a:I

    iput p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->d:Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->a:I

    iput p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->b:I

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
