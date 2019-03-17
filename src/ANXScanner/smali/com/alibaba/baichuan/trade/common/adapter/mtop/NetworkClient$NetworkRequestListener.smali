.class public interface abstract Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkRequestListener"
.end annotation


# virtual methods
.method public abstract onError(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
.end method

.method public abstract onSuccess(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
.end method
