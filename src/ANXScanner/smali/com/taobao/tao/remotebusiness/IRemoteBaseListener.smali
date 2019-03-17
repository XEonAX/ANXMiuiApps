.class public interface abstract Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;
.super Ljava/lang/Object;
.source "IRemoteBaseListener.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopListener;


# virtual methods
.method public abstract onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
.end method

.method public abstract onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
.end method

.method public abstract onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
.end method
