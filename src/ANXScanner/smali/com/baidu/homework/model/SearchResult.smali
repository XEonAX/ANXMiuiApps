.class public Lcom/baidu/homework/model/SearchResult;
.super Lcom/baidu/homework/model/NetworkResult;


# instance fields
.field public htmls:[Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public sid:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/homework/model/NetworkResult;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/homework/model/SearchResult;-><init>(I)V

    iput-object p2, p0, Lcom/baidu/homework/model/SearchResult;->htmls:[Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/homework/model/SearchResult;->sid:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/homework/model/SearchResult;->pid:Ljava/lang/String;

    return-void
.end method
