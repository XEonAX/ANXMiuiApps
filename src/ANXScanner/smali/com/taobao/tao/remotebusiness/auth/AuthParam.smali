.class public Lcom/taobao/tao/remotebusiness/auth/AuthParam;
.super Ljava/lang/Object;
.source "AuthParam.java"


# instance fields
.field public bizId:Ljava/lang/String;

.field public failInfo:Ljava/lang/String;

.field public sid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->sid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->bizId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->failInfo:Ljava/lang/String;

    .line 27
    return-void
.end method
