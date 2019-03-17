.class public interface abstract Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;
    }
.end annotation


# virtual methods
.method public abstract sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
.end method

.method public abstract sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Z
.end method
