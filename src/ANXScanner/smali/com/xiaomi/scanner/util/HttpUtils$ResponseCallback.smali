.class public abstract Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResponseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public tType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 365
    .local p0, "this":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->tType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 369
    .local p0, "this":Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;, "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback<TT;>;"
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
